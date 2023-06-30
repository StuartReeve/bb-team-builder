import { Team } from "@/models/common";
import { Box, Button, Center, Divider, Flex, Heading, Text, useToast } from "@chakra-ui/react";
import React, { useCallback, useMemo } from "react";
import { useTeamBuilder } from "../TeamBuilder/useTeamBuilder.hooks";

interface ITeamSummaryProps {
	team: Team;
}

const TeamSummary: React.FC<ITeamSummaryProps> = ({ team }) => {
	const teamBuilderData = useTeamBuilder();
	const toast = useToast();

	const shareBuild = () => {
		const shareText = `
${team.name}
------------------------------
${Object.keys(teamBuilderData.players)
	.map((key) => {
		return `${teamBuilderData.players[parseInt(key)]}x ${getPlayerName(parseInt(key))}`;
	})
	.join("\r\n")}
------------------------------
${teamBuilderData.rerolls}x Team Rerolls
${teamBuilderData.apo}x Apothecary
${teamBuilderData.stadium}x Stadium Upgrade/Stadium Enhancement
------------------------------
Team Cost: ${teamBuilderData.teamCost}K
------------------------------
`;
		navigator.clipboard.writeText(shareText);
		toast({
			title: "Team Copied to Clipboard",
			duration: 3000,
			render: () => (
				<Box color="white" backgroundColor="purple" p={3} borderRadius={8} textAlign="center">
					Team Copied To Clipboard
				</Box>
			),
		});
	};

	const hasExtrasSelected = useMemo(() => {
		return teamBuilderData.rerolls || teamBuilderData.apo || teamBuilderData.stadium;
	}, [teamBuilderData.rerolls, teamBuilderData.apo, teamBuilderData.stadium]);

	const playerCount = useMemo(() => {
		return Object.values(teamBuilderData.players).reduce((prev, curr) => prev + curr, 0);
	}, [teamBuilderData.players]);

	const getPlayerName = useCallback(
		(playerId: number) => {
			const player = team.players.find((p) => p.id === playerId);
			return player ? player.name : "How did you add this player?";
		},
		[team]
	);

	const getPlayerCost = useCallback(
		(playerId: number) => {
			const player = team.players.find((p) => p.id === playerId);
			return player ? player.cost : 0;
		},
		[team]
	);

	return (
		<Box flex="1" height="100vh" backgroundColor="purpleLightest" p={8}>
			<Heading size="lg" my={4}>
				Team Summary
			</Heading>
			<SummarySectionHeader text="Players" />
			{!playerCount && <Heading size="sm">No Players Selected</Heading>}
			{Object.keys(teamBuilderData.players).map((key) => {
				return (
					<SummaryItem
						key={key}
						text={getPlayerName(parseInt(key))}
						count={teamBuilderData.players[parseInt(key)]}
						cost={getPlayerCost(parseInt(key))}
					/>
				);
			})}
			<Heading size="md" mb={2} py={2} textAlign="right">
				{playerCount}/16
			</Heading>
			<SummarySectionHeader text="Extras" />
			{!hasExtrasSelected && <Heading size="sm">No Extras Selected</Heading>}
			{!!teamBuilderData.rerolls && (
				<SummaryItem text="Team Rerolls" count={teamBuilderData.rerolls} cost={team.reroll_cost} />
			)}
			{!!teamBuilderData.apo && (
				<SummaryItem text="Apothecary" count={teamBuilderData.apo} cost={team.apo_cost} />
			)}
			{!!teamBuilderData.stadium && (
				<SummaryItem text="Stadium Upgrade/Stadium Enhancement" count={teamBuilderData.stadium} cost={100} />
			)}
			<SummaryTotal teamCost={teamBuilderData.teamCost} />
			<Center my={8}>
				<Button onClick={shareBuild} isFullWidth>
					Share Team
				</Button>
			</Center>
		</Box>
	);
};

interface ISummaryItemProps {
	text: string;
	count: number;
	cost: number;
}

const SummaryItem: React.FC<ISummaryItemProps> = ({ text, count, cost }) => {
	return (
		<Flex gap={8}>
			<Heading size="sm" flex="1">
				{text}
			</Heading>
			<Text fontWeight="bold">{count}x</Text>
			<Text fontWeight="bold" width="40px" textAlign="right">
				{cost || 0}K
			</Text>
		</Flex>
	);
};

interface ISummarySectionHeaderProps {
	text: string;
}

const SummarySectionHeader: React.FC<ISummarySectionHeaderProps> = ({ text }) => {
	return (
		<Box my={8}>
			<Heading size="md" py={2}>
				{text}
			</Heading>
			<Divider borderColor="purple" />
		</Box>
	);
};

interface ISummaryTotalProps {
	teamCost: number;
}

const SummaryTotal: React.FC<ISummaryTotalProps> = ({ teamCost }) => {
	return (
		<Flex mt={8}>
			<Heading size="md" py={2} flex={1}>
				Total
			</Heading>
			<Heading size="md" py={2}>
				{teamCost || 0}K
			</Heading>
		</Flex>
	);
};
export default TeamSummary;
