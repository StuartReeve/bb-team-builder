import { Player } from "@/models/common";
import { Button, Flex, Heading, HStack, Text } from "@chakra-ui/react";
import React from "react";
import { useTeamBuilder } from "./useTeamBuilder.hooks";

interface IBuilderPlayerListItemProps {
	player: Player;
}

const BuilderPlayerListItem: React.FC<IBuilderPlayerListItemProps> = ({ player }) => {
	const teamBuilderData = useTeamBuilder();

	return (
		<Flex borderRadius={12} p={8} my={4} backgroundColor="purpleLightest" justifyContent="space-between">
			<Heading size="md" flex="1" my="auto">
				{player.name}
			</Heading>
			<Text my="auto" flex="1" fontWeight="bold">
				{player.cost}K
			</Text>
			<PlayerAmountButtons
				amount={teamBuilderData.players[player.id]}
				maxCount={player.max_count}
				onAdd={() => teamBuilderData.addPlayer(player.id)}
				onRemove={() => teamBuilderData.removePlayer(player.id)}
			/>
		</Flex>
	);
};

interface IPlayerAmountButtonsProps {
	amount: number;
	maxCount: number;
	onAdd: () => void;
	onRemove: () => void;
}

const PlayerAmountButtons: React.FC<IPlayerAmountButtonsProps> = ({ amount, maxCount, onAdd, onRemove }) => {
	return (
		<HStack gap={4}>
			<Button onClick={onRemove} isDisabled={!amount}>
				-
			</Button>
			<Text>{amount || 0}</Text>
			<Button onClick={onAdd} isDisabled={amount >= maxCount}>
				+
			</Button>
		</HStack>
	);
};

export default BuilderPlayerListItem;
