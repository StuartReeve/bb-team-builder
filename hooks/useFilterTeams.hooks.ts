import { Player, Team } from "@/models/common";
import { useCallback, useEffect, useState } from "react";

type TeamFilterOptions = {
	searchTerm: string;
	filteredCategories: string[];
	filteredRaces: string[];
};

type UseTeamFilterData = {
	filteredTeams: Team[];
};

const useFilterTeams = (teams: Team[], teamFilterOptions: TeamFilterOptions): UseTeamFilterData => {
	const [filteredTeams, setFilteredTeams] = useState(teams);

	const getDistinctRacesFromPlayers = useCallback((players: Player[]) => {
		return Array.from(new Set(players.map((player) => player.race)));
	}, []);

	useEffect(() => {
		const filteredCategories = teamFilterOptions.filteredCategories;
		const filteredRaces = teamFilterOptions.filteredRaces;

		setFilteredTeams(
			teams.filter(
				(team) =>
					(team.name.toLowerCase().includes(teamFilterOptions.searchTerm.toLocaleLowerCase()) ||
						team.tag.toLowerCase().includes(teamFilterOptions.searchTerm.toLocaleLowerCase())) &&
					filteredCategories.every((c) => team.team_categories.find((tc) => tc.category === c)) &&
					filteredRaces.every((r) => getDistinctRacesFromPlayers(team.players).find((pr) => pr === r))
			)
		);
	}, [teams, teamFilterOptions, getDistinctRacesFromPlayers]);

	return { filteredTeams };
};

export { useFilterTeams };
export type { TeamFilterOptions };
