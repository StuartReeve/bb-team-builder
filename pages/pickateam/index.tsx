import { GetStaticProps, NextPage } from "next";
import { Box, Button, Divider, Flex, Heading, Input } from "@chakra-ui/react";
import Wheel from "@/components/Wheel";
import { Team } from "@/models/common";
import { getTeams } from "services/teams/get";
import { useState } from "react";
import { ArrowBackIcon } from "@chakra-ui/icons";
import router from "next/router";
import Head from "next/head";

interface IPickATeamProps {
	teams: Team[];
}

const PickATeamPage: NextPage<IPickATeamProps> = ({ teams }) => {
	const [selectedTeams, setSelectedTeams] = useState<string[]>([]);
	const [searchTerm, setSearchTerm] = useState<string>("");
	const [customTeam, setCustomTeam] = useState<string>("");

	const addTeam = (teamName: string) => {
		setSelectedTeams((prevState) => [...prevState, teamName]);
	};

	const handleSearchTermChange: React.ChangeEventHandler<HTMLInputElement> = (event) => {
		setSearchTerm(event.target.value);
	};

	const handleCustomTeamChange: React.ChangeEventHandler<HTMLInputElement> = (event) => {
		setCustomTeam(event.target.value);
	};

	return (
		<Box height="100vh" display="flex">
			<Head>
				<title>Mixed Team Builder</title>
				<meta name="description" content="A Blood Bowl 2 Mixed Team Builder." />
				<link rel="icon" href="/favicon.ico" />
			</Head>
			<Box display="flex" flex="1">
				<Box flex="2" height="100vh" maxH="100vh" p={8}>
					<Flex gap={8} alignItems="center">
						<ArrowBackIcon color="purple" boxSize={8} cursor="pointer" onClick={() => router.push("/")} />
						<Heading my={4}>The Wheel of Teams</Heading>
					</Flex>
					{selectedTeams.length > 0 && <Wheel teamNames={selectedTeams} canvasSize={700} />}
					{selectedTeams.length <= 0 && <Heading size="md">Select more teams to get started</Heading>}
				</Box>
				<Flex flex="1" flexDirection="column" gap={4} height="100vh" backgroundColor="purpleLightest" p={8}>
					<Heading size="md">Teams</Heading>
					<Input
						placeholder="Search"
						background="white"
						focusBorderColor="purple"
						value={searchTerm}
						onChange={handleSearchTermChange}
					/>
					<Box flex="1" overflowY="scroll">
						{teams
							.filter((t) => t.name.toLowerCase().includes(searchTerm.toLowerCase()))
							.map((t) => {
								return (
									<Box key={t.id} onClick={() => addTeam(t.name)}>
										{t.name}
									</Box>
								);
							})}
					</Box>
					<Heading size="md">Custom Teams</Heading>
					<Input
						placeholder="Custom Team Name"
						background="white"
						focusBorderColor="purple"
						value={customTeam}
						onChange={handleCustomTeamChange}
					/>
					<Button onClick={() => addTeam(customTeam)}>Add Custom Teams</Button>
				</Flex>
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

export default PickATeamPage;
