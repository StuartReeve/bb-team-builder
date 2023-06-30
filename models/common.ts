interface SupabaseTeam extends Team {
	team_player_assignment: TeamPlayerAssignment[];
}

interface Team {
	id: number;
	name: string;
	tag: string;
	roster_type: string;
	tier: number;
	reroll_cost: number;
	apo_cost: number;
	additional_rules: string;
	notes: string;
	team_categories: TeamCategory[];
	players: Player[];
}

interface TeamCategory {
	id: number;
	category: string;
}

interface Player {
	id: number;
	race: string;
	name: string;
	cost: number;
	movement: number;
	strength: number;
	agility: number;
	armor: number;
	singles: string;
	doubles: string;
	special_rule_applies: boolean;
	max_count: number;
}

interface TeamPlayerAssignment {
	team_id: number;
	player_id: number;
	max_count: number;
	special_rule_applies: boolean;
	player: Player;
}

export type { Team, TeamCategory, Player, TeamPlayerAssignment, SupabaseTeam };
