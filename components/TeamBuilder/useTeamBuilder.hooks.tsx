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
	stadium: number;
	addReroll: () => void;
	removeReroll: () => void;
	addApo: () => void;
	removeApo: () => void;
	addStadium: () => void;
	removeStadium: () => void;
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
	const [stadium, setStadium] = useState(0);

	const addReroll = useCallback(() => {
		setRerolls((prevState) => ++prevState);
		setTeamCost((prevState) => prevState + team.reroll_cost);
	}, [team.reroll_cost]);

	const removeReroll = useCallback(() => {
		if (!rerolls) return;
		setRerolls((prevState) => --prevState);
		setTeamCost((prevState) => prevState - team.reroll_cost);
	}, [rerolls, team.reroll_cost]);

	const addApo = useCallback(() => {
		if (apo) return;
		setApo((prevState) => ++prevState);
		setTeamCost((prevState) => prevState + team.apo_cost);
	}, [apo, team.apo_cost]);

	const removeApo = useCallback(() => {
		if (!apo) return;
		setApo((prevState) => --prevState);
		setTeamCost((prevState) => prevState - team.apo_cost);
	}, [apo, team.apo_cost]);

	const addStadium = useCallback(() => {
		if (stadium >= 2) return;
		setStadium((prevState) => ++prevState);
		setTeamCost((prevState) => prevState + 100);
	}, [stadium]);

	const removeStadium = useCallback(() => {
		if (!stadium) return;
		setStadium((prevState) => --prevState);
		setTeamCost((prevState) => prevState - 100);
	}, [stadium]);

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
				if (newState[playerId] === 0) {
					delete newState[playerId];
				}
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
		stadium,
		addReroll,
		removeReroll,
		addApo,
		removeApo,
		addStadium,
		removeStadium,
		addPlayer,
		removePlayer,
	};

	return <TeamBuilderContext.Provider value={teamBuilderContext}>{children}</TeamBuilderContext.Provider>;
};
