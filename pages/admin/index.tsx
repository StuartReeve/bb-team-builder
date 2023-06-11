import Hero from "@/components/Hero";
import Search from "@/components/Search";
import TeamList from "@/components/TeamList";
import {
  TeamFilterOptions,
  useFilterTeams,
} from "@/hooks/useFilterTeams.hooks";
import { Team } from "@/models/common";
import { Box, Container, Flex, Heading } from "@chakra-ui/react";
import type { GetStaticProps, NextPage } from "next";
import Head from "next/head";
import { useMemo, useState } from "react";
import { getTeams } from "services/teams/get";

interface IHomeProps {
  teams: Team[];
}

const Home: NextPage<IHomeProps> = ({ teams }) => {
  const [filterOptions, setFilterOptions] = useState<TeamFilterOptions>({
    searchTerm: "",
    filteredCategories: [],
    filteredRaces: [],
  });
  const categoryList = useMemo(() => {
    return Array.from(
      new Set(teams.map((t) => t.team_categories.map((c) => c.category)).flat())
    ).sort();
  }, [teams]);
  const raceList = useMemo(() => {
    return Array.from(
      new Set(teams.map((t) => t.players.map((p) => p.race)).flat())
    ).sort();
  }, [teams]);

  const { filteredTeams } = useFilterTeams(teams, filterOptions);

  return (
    <Box minHeight="100vh">
      <Head>
        <title>Mixed Team Builder</title>
        <meta name="description" content="A Blood Bowl 2 Mixed Team Builder." />
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <Box display="flex" flex="1">
        <Box flex="2" height="100vh" overflowY="auto" p={8}>
          <Flex gap={8} alignItems="center">
            <Heading my={4}>Admin</Heading>
          </Flex>
          <Box>HI</Box>
        </Box>
        <Box
          flex="1"
          height="100vh"
          backgroundColor="purpleLightest"
          p={8}
        ></Box>
      </Box>
    </Box>
  );
};

export const getStaticProps: GetStaticProps = async () => {
  const teams: Team[] = await getTeams();

  return {
    props: {
      teams,
    },
  };
};

export default Home;
