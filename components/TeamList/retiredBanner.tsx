import { Alert, AlertDescription, AlertIcon, AlertTitle } from "@chakra-ui/react";
import React from "react";

const RetiredBanner: React.FC = () => {
	return (
		<Alert status="error" mb={6}>
			<AlertIcon />
			<AlertTitle mr={2}>This team is retired!</AlertTitle>
			<AlertDescription>
				Retired teams are shown just for archive purposes and can&apos;t be played in leagues.
			</AlertDescription>
		</Alert>
	);
};

export default RetiredBanner;
