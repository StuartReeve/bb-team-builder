import { Box, Center, Container, Heading } from "@chakra-ui/react";
import React from "react";

const Hero: React.FC = () => {
	return (
		<Box as="header" backgroundColor="black" py={32}>
			<Container>
				<Center>
					<Heading size="2xl">Blood Bowl 2 Team Builder</Heading>
				</Center>
			</Container>
		</Box>
	);
};

export default Hero;
