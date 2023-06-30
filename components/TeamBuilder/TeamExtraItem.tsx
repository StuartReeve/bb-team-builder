import { Button, Flex, Heading, HStack, Text } from "@chakra-ui/react";
import React from "react";

interface TeamExtraListItemProps {
	text: string;
	cost: number;
	amount: number;
	canAdd: boolean;
	onAdd: () => void;
	onRemove: () => void;
}

const TeamExtraListItem: React.FC<TeamExtraListItemProps> = ({ text, cost, amount, canAdd, onAdd, onRemove }) => {
	return (
		<Flex borderRadius={12} p={8} my={4} backgroundColor="purpleLightest" justifyContent="space-between">
			<Heading size="md" flex="1" my="auto">
				{text}
			</Heading>
			<Text my="auto" flex="1" fontWeight="bold">
				{cost}K
			</Text>
			<TeamExtraAmountButtons amount={amount} canAdd={canAdd} onAdd={onAdd} onRemove={onRemove} />
		</Flex>
	);
};

interface ITeamExtraAmountButtonsProps {
	amount: number;
	canAdd: boolean;
	onAdd: () => void;
	onRemove: () => void;
}

const TeamExtraAmountButtons: React.FC<ITeamExtraAmountButtonsProps> = ({ amount, canAdd, onAdd, onRemove }) => {
	return (
		<HStack gap={4}>
			<Button onClick={onRemove} isDisabled={!amount}>
				-
			</Button>
			<Text>{amount || 0}</Text>
			<Button onClick={onAdd} isDisabled={!canAdd}>
				+
			</Button>
		</HStack>
	);
};

export default TeamExtraListItem;
