import { Team } from "@/models/common";
import { Avatar, Box, Collapse, Flex, Heading, Tag, VStack } from "@chakra-ui/react";
import React from "react";
import TeamItem from "./TeamItem";

interface ITeamListProps {
	teams: Team[];
}

const TeamList: React.FC<ITeamListProps> = ({ teams }) => {
	return (
		<Flex flexDirection="column" gap={4} mb={4}>
			{teams.map((team) => (
				<TeamItem key={team.id} team={team} />
			))}
		</Flex>
	);
};

export default TeamList;
