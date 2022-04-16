import Hero from "@/components/Hero";
import Search from "@/components/Search";
import TeamList from "@/components/TeamList";
import { TeamFilterOptions, useFilterTeams } from "@/hooks/useFilterTeams.hooks";
import { Team } from "@/models/common";
import { Box, Container } from "@chakra-ui/react";
import type { GetStaticProps, NextPage } from "next";
import Head from "next/head";
import { useMemo, useState } from "react";
import { getTeams } from "services/teams/getAll";

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
		return Array.from(new Set(teams.map((t) => t.team_categories.map((c) => c.category)).flat())).sort();
	}, [teams]);
	const raceList = useMemo(() => {
		return Array.from(new Set(teams.map((t) => t.players.map((p) => p.race)).flat())).sort();
	}, [teams]);

	const { filteredTeams } = useFilterTeams(teams, filterOptions);

	return (
		<Box minHeight="100vh">
			<Head>
				<title>Mixed Team Builder</title>
				<meta name="description" content="A Blood Bowl 2 Mixed Team Builder." />
				<link rel="icon" href="/favicon.ico" />
			</Head>
			<Hero />
			<Container>
				<Search
					filterOptions={filterOptions}
					setFilterOptions={setFilterOptions}
					categoryList={categoryList}
					raceList={raceList}
				/>
				<TeamList teams={filteredTeams} />
			</Container>
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
