import { SupabaseTeam, Team } from "@/models/common";
import { supabase } from "@/utils/supabaseClient";

export const getTeams = async (): Promise<Team[]> => {
	const supabaseTeams = await supabase
		.from<SupabaseTeam>("team")
		.select("*, team_categories:team_category(*), team_player_assignment(*, player(*))")
		.order("tier")
		.order("name");

	const teams = supabaseTeams.data?.map((st) => {
		st.players = st.team_player_assignment.map((tpa) => {
			return { ...tpa.player, max_count: tpa.max_count, special_rule_applies: tpa.special_rule_applies };
		});
		return st as Team;
	});

	return teams || [];
};

export const getTeamById = async (teamId: number): Promise<Team | undefined> => {
	const supabaseTeams = await supabase
		.from<SupabaseTeam>("team")
		.select("*, team_categories:team_category(*), team_player_assignment(*, player(*))")
		.match({ id: teamId })
		.order("tier")
		.order("name");

	const teams = supabaseTeams.data?.map((st) => {
		st.players = st.team_player_assignment.map((tpa) => {
			return { ...tpa.player, max_count: tpa.max_count, special_rule_applies: tpa.special_rule_applies };
		});
		return st as Team;
	});

	const team = teams && teams.length ? teams[0] : undefined;

	return team;
};
