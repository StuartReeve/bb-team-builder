import { Team } from "@/models/common";
import { ChevronDownIcon } from "@chakra-ui/icons";
import {
  Avatar,
  Box,
  Button,
  Center,
  Collapse,
  Flex,
  Heading,
  Tag,
  useBreakpointValue,
  useDisclosure,
} from "@chakra-ui/react";
import { useRouter } from "next/router";
import React, { useMemo } from "react";
import TeamInfo from "../TeamInfo";

interface ITeamItemProps {
  team: Team;
}

const TeamItem: React.FC<ITeamItemProps> = ({ team }) => {
  const router = useRouter();
  const isLargeScreen = useBreakpointValue({ sm: true });
  const { isOpen, onToggle } = useDisclosure();

  const getAvatarText = () => {
    if (team.tag.length > 0) return team.tag;
    return team.name[0];
  };

  const distinctRaces = useMemo(() => {
    return Array.from(new Set(team.players.map((player) => player.race)));
  }, [team]);

  return (
    <Box boxShadow="md" borderRadius={12}>
      <Flex
        p={4}
        borderRadius={12}
        backgroundColor="purpleLightest"
        alignItems="center"
        justifyContent="space-between"
        cursor="pointer"
        onClick={onToggle}
      >
        <Avatar
          backgroundColor="purple"
          color="white"
          name="AoP"
          position="unset"
          getInitials={getAvatarText}
        />
        <Box flex="1" p={4}>
          <Heading size="md">{team.name}</Heading>
          <Heading size="sm" fontWeight="400" color="purpleLight">
            Tier {team.tier} - {team.roster_type}
          </Heading>
        </Box>
        {isLargeScreen && (
          <Box flex="1">
            {team.team_categories.map((categ) => {
              return (
                <Tag key={categ.id} backgroundColor="white" m={2}>
                  {categ.category}
                </Tag>
              );
            })}
          </Box>
        )}
        {isLargeScreen && (
          <Box flex="1">
            {distinctRaces.map((race) => {
              return (
                <Tag key={race} backgroundColor="white" m={2}>
                  {race}
                </Tag>
              );
            })}
          </Box>
        )}
        <ChevronDownIcon
          color="purple"
          boxSize={8}
          transform={isOpen ? "rotate(180deg)" : ""}
          transition="transform 0.4s"
        />
      </Flex>
      <Collapse in={isOpen} animateOpacity>
        <TeamInfo team={team} />
        <Center p={8}>
          <Button onClick={() => router.push(`/team/${team.id}`)}>
            Create Team
          </Button>
        </Center>
      </Collapse>
    </Box>
  );
};

export default TeamItem;
