import { SupabaseTeam, Team } from "@/models/common";
import { supabase } from "@/utils/supabaseClient";

export const getTeams = async (): Promise<Team[]> => {
	const supabaseTeams = await supabase
		.from<SupabaseTeam>("team")
		.select("*, team_categories:team_category(*), team_player_assignment(*, player(*))");

	const teams = supabaseTeams.data?.map((st) => {
		st.players = st.team_player_assignment.map((tpa) => {
			return { ...tpa.player, max_count: tpa.max_count };
		});
		return st as Team;
	});

	return teams || [];
};
