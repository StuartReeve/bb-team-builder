import useDebounce from "@/hooks/useDebounce.hooks";
import { IIncludeFilterOptions } from "@/models/search";
import { Box, Flex, Input } from "@chakra-ui/react";
import React, { useEffect, useState } from "react";
import CategorySelect from "./CategorySelect";
import RaceSelect from "./RaceSelect";

export interface ISearchProps extends IIncludeFilterOptions {
  categoryList: string[];
  raceList: string[];
  searchOptions: { shiftUp: boolean; showFilters: boolean };
}

const Search: React.FC<ISearchProps> = ({
  filterOptions,
  setFilterOptions,
  categoryList,
  raceList,
  searchOptions,
}) => {
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

  const handleSearchTermChange: React.ChangeEventHandler<HTMLInputElement> = (
    event
  ) => {
    setSearchTerm(event.target.value);
  };

  return (
    <Flex
      p={2}
      backgroundColor="white"
      alignItems="center"
      transform="translateY(-50%)"
      boxShadow="md"
      borderRadius={12}
      flexWrap="wrap"
      gap={4}
    >
      <Input
        placeholder="Search"
        focusBorderColor="purple"
        flex="1"
        flexBasis="300px"
        value={searchTerm}
        onChange={handleSearchTermChange}
      />
      {searchOptions.showFilters && (
        <>
          <Box flex="1" flexBasis="300px">
            <CategorySelect
              items={categoryList}
              filterOptions={filterOptions}
              setFilterOptions={setFilterOptions}
            />
          </Box>

          <Box flex="1" flexBasis="300px">
            <RaceSelect
              items={raceList}
              filterOptions={filterOptions}
              setFilterOptions={setFilterOptions}
            />
          </Box>
        </>
      )}
    </Flex>
  );
};

export default Search;
