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
}

export type { Team, TeamCategory, Player };
