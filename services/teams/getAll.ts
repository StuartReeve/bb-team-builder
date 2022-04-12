import { Team } from "@/models/common";
import { supabase } from "@/utils/supabaseClient";

export const getTeams = async (): Promise<Team[]> => {
	const teams = await supabase.from<Team>("team").select("*, team_categories:team_category(*), players:player(*)");

	return teams.data || [];
};
