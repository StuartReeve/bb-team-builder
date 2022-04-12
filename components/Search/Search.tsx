import useDebounce from "@/hooks/useDebounce.hooks";
import { IIncludeFilterOptions } from "@/models/search";
import { Box, Flex, Input } from "@chakra-ui/react";
import React, { useEffect, useState } from "react";
import CategorySelect from "./CategorySelect";
import Divider from "./Divider";
import RaceSelect from "./RaceSelect";

export interface ISearchProps extends IIncludeFilterOptions {
	categoryList: string[];
	raceList: string[];
}

const Search: React.FC<ISearchProps> = ({ filterOptions, setFilterOptions, categoryList, raceList }) => {
	const [searchTerm, setSearchTerm] = useState(filterOptions.searchTerm);
	const debouncedSearchTerm = useDebounce<string>(searchTerm, 400);

	useEffect(() => {
		setFilterOptions((prevState) => {
			return {
				...prevState,
				...{ searchTerm: debouncedSearchTerm },
			};
		});
	}, [debouncedSearchTerm, setFilterOptions]);

	const handleSearchTermChange: React.ChangeEventHandler<HTMLInputElement> = (event) => {
		setSearchTerm(event.target.value);
	};

	return (
		<Flex
			h={16}
			p={2}
			backgroundColor="white"
			alignItems="center"
			transform="translateY(-50%)"
			boxShadow="md"
			borderRadius={12}
		>
			<Input
				placeholder="Search"
				focusBorderColor="purple"
				flex="1"
				value={searchTerm}
				onChange={handleSearchTermChange}
			/>
			<Divider />
			<Box flex="1">
				<CategorySelect
					items={categoryList}
					filterOptions={filterOptions}
					setFilterOptions={setFilterOptions}
				/>
			</Box>

			<Divider />
			<Box flex="1">
				<RaceSelect items={raceList} filterOptions={filterOptions} setFilterOptions={setFilterOptions} />
			</Box>
		</Flex>
	);
};

export default Search;
