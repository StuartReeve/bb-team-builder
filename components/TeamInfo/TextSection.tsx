/* eslint-disable react/no-children-prop */
import { Box, Heading } from "@chakra-ui/react";
import ChakraUIRenderer from "chakra-ui-markdown-renderer";
import React, { useMemo } from "react";
import ReactMarkdown from "react-markdown";

interface ITextSectionProps {
	heading: string;
	text: string;
	emptyText: string;
}

const customTheme = {
	blockquote: (props: any) => {
		const { children } = props;
		return (
			<Box
				as="blockquote"
				mb={2}
				borderTopRightRadius={4}
				borderBottomRightRadius={4}
				fontStyle="italic"
				backgroundColor="purpleLightest"
				borderLeft="4px solid"
				borderColor="purple"
				px={4}
				py={2}
			>
				{children}
			</Box>
		);
	},
};

const TextSection: React.FC<ITextSectionProps> = ({ heading, text, emptyText }) => {
	const displayText = useMemo(() => {
		if (text && text.length > 0) {
			return text.replace(/\\n/g, "\n");
		} else {
			return emptyText;
		}
	}, [text, emptyText]);
	return (
		<Box>
			<Heading size="sm">{heading}</Heading>
			<Box my={4} whiteSpace="pre-line">
				<ReactMarkdown components={ChakraUIRenderer(customTheme)} children={displayText}></ReactMarkdown>
			</Box>
		</Box>
	);
};

export default TextSection;
