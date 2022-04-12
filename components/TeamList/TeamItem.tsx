import { Team } from "@/models/common";
import { ChevronDownIcon } from "@chakra-ui/icons";
import { Avatar, Box, Collapse, Flex, Heading, Tag, useDisclosure } from "@chakra-ui/react";
import React, { useMemo } from "react";
import PlayerList from "./PlayerList";
import TextSection from "./TextSection";

interface ITeamItemProps {
	team: Team;
}

const TeamItem: React.FC<ITeamItemProps> = ({ team }) => {
	const { isOpen, onToggle } = useDisclosure();

	const getAvatarText = () => {
		if (team.tag.length > 0) return team.tag;
		return team.name[0];
	};

	const distinctRaces = useMemo(() => {
		return Array.from(new Set(team.players.map((player) => player.race)));
	}, [team]);

	return (
		<Box boxShadow="md" borderRadius={12}>
			<Flex
				p={4}
				borderRadius={12}
				backgroundColor="purpleLightest"
				alignItems="center"
				justifyContent="space-between"
				cursor="pointer"
				onClick={onToggle}
			>
				<Avatar backgroundColor="purple" color="white" name="AoP" getInitials={getAvatarText} />
				<Box flex="1" p={4}>
					<Heading size="md">{team.name}</Heading>
					<Heading size="sm" fontWeight="400" color="purpleLight">
						Tier {team.tier} - {team.roster_type}
					</Heading>
				</Box>
				<Box flex="1">
					{team.team_categories.map((categ) => {
						return (
							<Tag key={categ.id} backgroundColor="white" m={2}>
								{categ.category}
							</Tag>
						);
					})}
				</Box>
				<Box flex="1">
					{distinctRaces.map((race) => {
						return (
							<Tag key={race} backgroundColor="white" m={2}>
								{race}
							</Tag>
						);
					})}
				</Box>
				<ChevronDownIcon
					color="purple"
					boxSize={8}
					transform={isOpen ? "rotate(180deg)" : ""}
					transition="transform 0.4s"
				/>
			</Flex>
			<Collapse in={isOpen} animateOpacity>
				<Box p={8}>
					<PlayerList players={team.players} />
					<TextSection
						heading="Additional Composition Rules"
						text={team.additional_rules}
						emptyText="No special rules for this team."
					/>
					<TextSection heading="Notes" text={team.notes} emptyText="No additional notes for this team." />
				</Box>
			</Collapse>
		</Box>
	);
};

export default TeamItem;
