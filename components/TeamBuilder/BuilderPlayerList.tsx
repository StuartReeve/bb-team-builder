import { Player } from "@/models/common";
import { Box, Button, Heading, Text } from "@chakra-ui/react";
import React, { useMemo } from "react";
import { useTeamBuilder } from "./useTeamBuilder.hooks";

interface IBuilderPlayerList {
	players: Player[];
}

const BuilderPlayerList: React.FC<IBuilderPlayerList> = ({ players }) => {
	const teamBuilderData = useTeamBuilder();

	const sortedPlayers = useMemo(() => {
		return players.sort((a, b) => (a.name > b.name ? 1 : -1));
	}, [players]);

	return (
		<Box>
			{sortedPlayers.map((p) => {
				return (
					<Box key={p.id} borderRadius={12} p={8} my={4} backgroundColor="purpleLightest">
						<Heading size="md">{p.name}</Heading>
						<Text>Some other stuff to fill this out</Text>
						<Button onClick={() => teamBuilderData.addPlayer(p.id)}>Add This Player :)</Button>
					</Box>
				);
			})}
		</Box>
	);
};

export default BuilderPlayerList;
