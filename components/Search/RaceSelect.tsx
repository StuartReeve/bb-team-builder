import { IIncludeFilterOptions } from "@/models/search";
import React, { useCallback } from "react";
import MultiSelect, { MultiSelectItem } from "./MultiSelect";

interface IRaceSelctProps extends IIncludeFilterOptions {
	items: string[];
}

const RaceSelect: React.FC<IRaceSelctProps> = ({ items, filterOptions, setFilterOptions }) => {
	const getText = useCallback(() => {
		const count = filterOptions.filteredRaces.length;
		if (count === 1) {
			return "1 Race Selected";
		}
		if (count) {
			return `${count} Races Selected`;
		} else {
			return "Select Race";
		}
	}, [filterOptions.filteredRaces]);

	const toggleItem = useCallback(
		(item: MultiSelectItem) => {
			setFilterOptions((prevState) => {
				const newArray = item.selected
					? prevState.filteredRaces.filter((i) => i != item.value)
					: [...prevState.filteredRaces, item.value];
				return {
					...prevState,
					...{ filteredRaces: newArray },
				};
			});
		},
		[setFilterOptions]
	);

	const isItemSelected = useCallback(
		(value: string) => {
			return filterOptions.filteredRaces.includes(value);
		},
		[filterOptions.filteredRaces]
	);

	return <MultiSelect items={items} getText={getText} toggleItem={toggleItem} isItemSelected={isItemSelected} />;
};

export default RaceSelect;
