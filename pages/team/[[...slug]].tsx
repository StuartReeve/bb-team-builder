import Hero from "@/components/Hero";
import TeamBuilder from "@/components/TeamBuilder";
import BuilderPlayerList from "@/components/TeamBuilder/BuilderPlayerList";
import { TeamBuilderProvider } from "@/components/TeamBuilder/useTeamBuilder.hooks";
import TeamSummary from "@/components/TeamSummary";
import { Team } from "@/models/common";
import { getFirstOrString } from "@/utils/getFirstOrString";
import { Box, Text, Heading, Spinner } from "@chakra-ui/react";
import type { GetStaticProps, GetStaticPaths, NextPage } from "next";
import Head from "next/head";
import { useMemo } from "react";
import { getTeamById, getTeams } from "services/teams/get";

interface ITeamPageProps {
	team: Team;
}

const TeamPage: NextPage<ITeamPageProps> = ({ team }) => {
	return (
		<Box height="100vh" display="flex">
			<Head>
				<title>Mixed Team Builder</title>
				<meta name="description" content="A Blood Bowl 2 Mixed Team Builder." />
				<link rel="icon" href="/favicon.ico" />
			</Head>
			{!team && <Spinner />}
			{team && (
				<TeamBuilderProvider team={team}>
					<Box display="flex" flex="1">
						<Box flex="2" height="100vh" overflowY="auto" p={8}>
							<Box>
								<Heading my={4}>Creating {team.name}</Heading>
								{/* <Box height="1px" backgroundColor="purple" /> */}
							</Box>
							<TeamBuilder team={team} />
						</Box>
						<TeamSummary team={team} />
					</Box>
				</TeamBuilderProvider>
			)}
		</Box>
	);
};

export const getStaticPaths: GetStaticPaths = async () => {
	const teams: Team[] = await getTeams();

	if (!teams.length) {
		return {
			paths: [],
			fallback: true,
		};
	}

	return {
		paths: teams.map((t) => ({ params: { slug: [t.id.toString()] } })),
		fallback: true,
	};
};

export const getStaticProps: GetStaticProps = async (context) => {
	const params = context.params?.slug;

	const teamId = parseInt(getFirstOrString(params || ""));

	const team = await getTeamById(teamId);

	if (!team) {
		return { notFound: true };
	}

	return {
		props: {
			team,
		},
	};
};

export default TeamPage;
