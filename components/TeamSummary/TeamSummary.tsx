import { Box, Button, Heading } from "@chakra-ui/react";
import React from "react";
import { useTeamBuilder } from "../TeamBuilder/useTeamBuilder.hooks";

const TeamSummary: React.FC = () => {
	const teamBuilderData = useTeamBuilder();

	console.log(teamBuilderData.players);

	return (
		<Box flex="1" height="100vh" backgroundColor="purpleLightest" p={8}>
			<Heading size="md">Team Summary </Heading>
			{Object.keys(teamBuilderData.players).map((key) => {
				return (
					<Box key={key}>
						{key}:{teamBuilderData.players[parseInt(key)]}
					</Box>
				);
			})}
			<Box>Rerolls: {teamBuilderData.rerolls}</Box>
			<Box>Apo: {teamBuilderData.apo}</Box>
			<Box>Team Cost: {teamBuilderData.teamCost}</Box>
			<Button onClick={teamBuilderData.addReroll}>Add Reroll</Button>
			<Button onClick={teamBuilderData.addApo}>Add Apo</Button>
		</Box>
	);
};

export default TeamSummary;
