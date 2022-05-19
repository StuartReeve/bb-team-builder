import { GetStaticProps, NextPage } from "next";
import {
	Box,
	Button,
	Center,
	Text,
	Flex,
	Heading,
	Input,
	Modal,
	ModalBody,
	ModalCloseButton,
	ModalContent,
	ModalFooter,
	ModalHeader,
	ModalOverlay,
} from "@chakra-ui/react";
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
	const [teamLandedOn, setTeamLandedOn] = useState<string | null>("");

	const addTeam = (teamName: string) => {
		setSelectedTeams((prevState) => [...prevState, teamName]);
	};

	const handleSearchTermChange: React.ChangeEventHandler<HTMLInputElement> = (event) => {
		setSearchTerm(event.target.value);
	};

	const handleCustomTeamChange: React.ChangeEventHandler<HTMLInputElement> = (event) => {
		setCustomTeam(event.target.value);
	};

	const handleCustomTeamAdded = () => {
		if (customTeam.length > 0) {
			addTeam(customTeam);
			setCustomTeam("");
		}
	};

	const handleTeamLandedOn = (teamLandedOn: string) => {
		setTeamLandedOn(teamLandedOn);
	};

	const handledCloseModal = () => {
		setSelectedTeams((prevState) => {
			return [...prevState.filter((t) => t !== teamLandedOn)];
		});
		setTeamLandedOn(null);
	};

	return (
		<Box height="100vh" display="flex">
			<Head>
				<title>Mixed Team Builder</title>
				<meta name="description" content="A Blood Bowl 2 Mixed Team Builder." />
				<link rel="icon" href="/favicon.ico" />
			</Head>
			<Box display="flex" flex="1">
				<Flex flexDirection="column" flex="2" height="100vh" maxH="100vh" p={8}>
					<Flex gap={8} alignItems="center">
						<ArrowBackIcon color="purple" boxSize={8} cursor="pointer" onClick={() => router.push("/")} />
						<Heading my={4}>The Wheel of Teams</Heading>
					</Flex>
					<Flex flexDirection="column" flex="1">
						<Center flex="1">
							{selectedTeams.length > 0 && (
								<Wheel teamNames={selectedTeams} canvasSize={700} onTeamLandedOn={handleTeamLandedOn} />
							)}
							{selectedTeams.length <= 0 && (
								<Heading size="md" textAlign="center" margin="auto">
									Select more teams to get started
								</Heading>
							)}
						</Center>
					</Flex>
				</Flex>
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
							.sort((a, b) => a.name.localeCompare(b.name))
							.filter((t) => t.name.toLowerCase().includes(searchTerm.toLowerCase()))
							.map((t) => {
								return (
									<Flex
										key={t.id}
										my={2}
										alignItems="center"
										justifyContent="space-between"
										className="wheel-team-list"
									>
										<Heading size="sm">{t.name}</Heading>
										<Button mr={4} onClick={() => addTeam(t.name)}>
											+
										</Button>
									</Flex>
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
					<Button onClick={handleCustomTeamAdded}>Add Custom Teams</Button>
				</Flex>
			</Box>

			<Modal isOpen={!!teamLandedOn} onClose={handledCloseModal} isCentered>
				<ModalOverlay />
				<ModalContent>
					<ModalHeader>The Wheel Has Spoken</ModalHeader>
					<ModalBody>
						<Center flexDirection="column" gap={2}>
							<Heading size="md">{teamLandedOn}</Heading>
							<Text>has been {selectedTeams.length > 1 ? "eliminated" : "chosen"}</Text>
						</Center>
					</ModalBody>

					<ModalFooter>
						<Button colorScheme="blue" onClick={handledCloseModal}>
							Close
						</Button>
					</ModalFooter>
				</ModalContent>
			</Modal>
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
