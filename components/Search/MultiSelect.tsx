import { Box, useDisclosure, Input, Checkbox, Flex, useOutsideClick } from "@chakra-ui/react";
import React, { useMemo, useRef } from "react";

export interface IMultiSelectProps {
	items: string[];
	getText: () => string;
	toggleItem: (item: MultiSelectItem) => void;
	isItemSelected: (value: string) => boolean;
}

export type MultiSelectItem = {
	value: string;
	selected: boolean;
};

const MultiSelect: React.FC<IMultiSelectProps> = ({ items, getText, toggleItem, isItemSelected }) => {
	const selectRef = useRef(null);
	const { isOpen, onClose, onToggle } = useDisclosure();
	useOutsideClick({
		ref: selectRef,
		handler: onClose,
	});

	const multiSelectItems: MultiSelectItem[] = useMemo(() => {
		return items.map((item) => {
			const newItem: MultiSelectItem = { value: item, selected: isItemSelected(item) };
			return newItem;
		});
	}, [isItemSelected, items]);

	return (
		<Box ref={selectRef} position="relative" borderRadius={2}>
			<Input
				placeholder={getText()}
				focusBorderColor="purple"
				flex="1"
				onClick={onToggle}
				list="items"
				isReadOnly
				backgroundColor={items.some((i) => isItemSelected(i)) ? "purpleLightest" : "initial"}
				_placeholder={{
					color: "black",
				}}
			/>
			{isOpen && (
				<Box
					position="absolute"
					top="100%"
					w="100%"
					mt={2}
					backgroundColor="white"
					borderRadius="md"
					boxShadow="md"
					border="1px solid"
					borderColor="purpleLightest"
				>
					{multiSelectItems.map((item) => (
						<MultiSelectItem key={item.value} item={item} toggleItem={toggleItem} />
					))}
				</Box>
			)}
		</Box>
	);
};

interface IMultiSelectItemProps {
	item: MultiSelectItem;
	toggleItem: (item: MultiSelectItem) => void;
}

const MultiSelectItem: React.FC<IMultiSelectItemProps> = ({ item, toggleItem }) => {
	return (
		<Flex p={2} id="items" cursor="pointer" _hover={{ backgroundColor: "purpleLightest" }}>
			<Checkbox isChecked={item.selected} onChange={() => toggleItem(item)} />
			<Box flex="1" px={2} onClick={() => toggleItem(item)}>
				{item.value}
			</Box>
		</Flex>
	);
};

export default MultiSelect;
