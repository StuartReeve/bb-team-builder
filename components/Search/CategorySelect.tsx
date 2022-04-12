import { IIncludeFilterOptions } from "@/models/search";
import React, { useCallback } from "react";
import MultiSelect, { MultiSelectItem } from "./MultiSelect";

interface ICategorySelect extends IIncludeFilterOptions {
	items: string[];
}

const CategorySelect: React.FC<ICategorySelect> = ({ items, filterOptions, setFilterOptions }) => {
	const getText = useCallback(() => {
		const count = filterOptions.filteredCategories.length;
		if (count === 1) {
			return "1 Category Selected";
		}
		if (count) {
			return `${count} Categories Selected`;
		} else {
			return "Select Category";
		}
	}, [filterOptions.filteredCategories]);

	const toggleItem = useCallback(
		(item: MultiSelectItem) => {
			setFilterOptions((prevState) => {
				const newArray = item.selected
					? prevState.filteredCategories.filter((i) => i != item.value)
					: [...prevState.filteredCategories, item.value];
				return {
					...prevState,
					...{ filteredCategories: newArray },
				};
			});
		},
		[setFilterOptions]
	);

	const isItemSelected = useCallback(
		(value: string) => {
			return filterOptions.filteredCategories.includes(value);
		},
		[filterOptions.filteredCategories]
	);

	return <MultiSelect items={items} getText={getText} toggleItem={toggleItem} isItemSelected={isItemSelected} />;
};

export default CategorySelect;
