import { Team } from "@/models/common";
import { Box } from "@chakra-ui/react";
import React from "react";
import RetiredBanner from "./RetiredBanner";
import PlayerList from "./PlayerList";
import TextSection from "./TextSection";

interface ITeamInfoProps {
	team: Team;
}

const TeamInfo: React.FC<ITeamInfoProps> = ({ team }) => {
	return (
		<Box p={8}>
			{team.roster_type === "Retired" && <RetiredBanner />}
			<PlayerList players={team.players} />
			<TextSection
				heading="Additional Composition Rules"
				text={team.additional_rules}
				emptyText="No special rules for this team."
			/>
			<TextSection heading="Notes" text={team.notes} emptyText="No additional notes for this team." />
		</Box>
	);
};

export default TeamInfo;
