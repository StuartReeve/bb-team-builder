import { TeamFilterOptions } from "@/hooks/useFilterTeams.hooks";
import { Dispatch, SetStateAction } from "react";

interface IIncludeFilterOptions {
	filterOptions: TeamFilterOptions;
	setFilterOptions: Dispatch<SetStateAction<TeamFilterOptions>>;
}

export type { IIncludeFilterOptions };
