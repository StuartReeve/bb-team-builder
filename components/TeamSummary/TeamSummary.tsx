import { Team } from "@/models/common";
import { Box, Button, Divider, Flex, Heading, Text } from "@chakra-ui/react";
import React, { useCallback } from "react";
import { useTeamBuilder } from "../TeamBuilder/useTeamBuilder.hooks";

interface ITeamSummaryProps {
	team: Team;
}

const TeamSummary: React.FC<ITeamSummaryProps> = ({ team }) => {
	const teamBuilderData = useTeamBuilder();

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
			<SummarySectionHeader text="Extras" />
			<SummaryItem text="Team Rerolls" count={teamBuilderData.rerolls} cost={team.reroll_cost} />
			<SummaryItem text="Apothecary" count={teamBuilderData.apo} cost={team.apo_cost} />
			<SummaryTotal teamCost={teamBuilderData.teamCost} />
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
		<Box mb={8}>
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
