import { Player } from "@/models/common";
import { Box } from "@chakra-ui/react";
import React, { useMemo } from "react";
import BuilderPlayerListItem from "./BuilderPlayerListItem";

interface IBuilderPlayerList {
	players: Player[];
}

const BuilderPlayerList: React.FC<IBuilderPlayerList> = ({ players }) => {
	const sortedPlayers = useMemo(() => {
		return players.sort((a, b) => (a.name > b.name ? 1 : -1));
	}, [players]);

	return (
		<Box>
			{sortedPlayers.map((p) => {
				return <BuilderPlayerListItem key={p.id} player={p} />;
			})}
		</Box>
	);
};

export default BuilderPlayerList;
