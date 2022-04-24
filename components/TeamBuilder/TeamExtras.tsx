import React from "react";
import { Box } from "@chakra-ui/react";
import { useTeamBuilder } from "./useTeamBuilder.hooks";
import TeamExtraListItem from "./TeamExtraItem";
import { Team } from "@/models/common";

interface ITeamExtraProps {
	team: Team;
}

const TeamExtras: React.FC<ITeamExtraProps> = ({ team }) => {
	const teamBuilderData = useTeamBuilder();

	return (
		<Box>
			<TeamExtraListItem
				text="Team Rerolls"
				cost={team.reroll_cost}
				amount={teamBuilderData.rerolls}
				canAdd={true}
				onAdd={teamBuilderData.addReroll}
				onRemove={teamBuilderData.removeReroll}
			/>
			{!!team.apo_cost && (
				<TeamExtraListItem
					text="Apothecary"
					cost={team.apo_cost}
					amount={teamBuilderData.apo}
					canAdd={!teamBuilderData.apo}
					onAdd={teamBuilderData.addApo}
					onRemove={teamBuilderData.removeApo}
				/>
			)}
			<TeamExtraListItem
				text="Stadium Upgrade/Stadium Enhancement"
				cost={100}
				amount={teamBuilderData.stadium}
				canAdd={!teamBuilderData.stadium || teamBuilderData.stadium < 2}
				onAdd={teamBuilderData.addStadium}
				onRemove={teamBuilderData.removeStadium}
			/>
		</Box>
	);
};

export default TeamExtras;
