import { Team } from "@/models/common";
import { createContext, useCallback, useContext, useState } from "react";

interface ITeamBuilderProviderProps {
	team: Team;
}

interface ITeamBuilderContext {
	teamCost: number;
	players: { [key: number]: number };
	rerolls: number;
	apo: number;
	addReroll: () => void;
	addApo: () => void;
	addPlayer: (playerId: number) => void;
	removePlayer: (playerId: number) => void;
}

const TeamBuilderContext = createContext<ITeamBuilderContext>({} as ITeamBuilderContext);

export function useTeamBuilder(): ITeamBuilderContext {
	return useContext(TeamBuilderContext);
}

export const TeamBuilderProvider: React.FC<ITeamBuilderProviderProps> = ({ children, team }) => {
	const [teamCost, setTeamCost] = useState(0);
	const [teamPlayers, setTeamPlayers] = useState<{ [key: number]: number }>([]);
	const [rerolls, setRerolls] = useState(0);
	const [apo, setApo] = useState(0);

	const addReroll = useCallback(() => {
		setRerolls((prevState) => ++prevState);
		setTeamCost((prevState) => prevState + team.reroll_cost);
	}, [team.reroll_cost]);

	const addApo = useCallback(() => {
		if (apo) return;
		setApo((prevState) => ++prevState);
		setTeamCost((prevState) => prevState + team.apo_cost);
	}, [apo, team.apo_cost]);

	const addPlayer = useCallback(
		(playerId: number) => {
			const player = team.players.find((p) => p.id === playerId);
			const teamPlayerCount = teamPlayers[playerId];
			if (!player || teamPlayerCount >= player.max_count) return;

			setTeamPlayers((prevState) => {
				const newState = { ...prevState };
				newState[playerId] = newState[playerId] > 0 ? newState[playerId] + 1 : 1;
				return newState;
			});
			setTeamCost((prevState) => prevState + player.cost);
		},
		[team.players, teamPlayers]
	);

	const removePlayer = useCallback(
		(playerId: number) => {
			const player = team.players.find((p) => p.id === playerId);
			const teamPlayerCount = teamPlayers[playerId];
			if (!player || teamPlayerCount <= 0) return;

			setTeamPlayers((prevState) => {
				const newState = { ...prevState };
				newState[playerId] = newState[playerId] > 0 ? newState[playerId] - 1 : 0;
				return newState;
			});
			setTeamCost((prevState) => prevState - player.cost);
		},
		[team.players, teamPlayers]
	);

	const teamBuilderContext: ITeamBuilderContext = {
		teamCost,
		players: teamPlayers,
		rerolls,
		apo,
		addReroll,
		addApo,
		addPlayer,
		removePlayer,
	};

	return <TeamBuilderContext.Provider value={teamBuilderContext}>{children}</TeamBuilderContext.Provider>;
};
