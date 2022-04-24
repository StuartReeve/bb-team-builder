import { Team } from "@/models/common";
import { Box, Tab, TabList, TabPanel, TabPanels, Tabs } from "@chakra-ui/react";
import React, { useMemo } from "react";
import TeamInfo from "../TeamInfo";
import BuilderPlayerList from "./BuilderPlayerList";
import TeamExtras from "./TeamExtras";

interface TeamBuilderTab {
	component: React.ReactChild;
	text: string;
}

interface ITeamBuilderProps {
	team: Team;
}

const TeamBuilder: React.FC<ITeamBuilderProps> = ({ team }) => {
	const [tabIndex, setTabIndex] = React.useState(0);
	const handleTabsChange = (index: number) => {
		setTabIndex(index);
	};
	const builderTabs = useMemo<TeamBuilderTab[]>(() => {
		return [
			{
				component: <TeamInfo team={team} />,
				text: "Team Info",
			},
			{
				component: <BuilderPlayerList players={team.players} />,
				text: "Players",
			},
			{
				component: <TeamExtras team={team} />,
				text: "Team Extras",
			},
		];
	}, [team]);

	return (
		<Box>
			{team && (
				<Tabs isFitted id="tab-1" index={tabIndex} onChange={handleTabsChange}>
					<TabList color="white">
						{builderTabs.map((tab: TeamBuilderTab) => {
							return (
								<Tab
									key={tab.text}
									color="purple"
									_selected={{
										borderColor: "purple",
									}}
								>
									{tab.text}
								</Tab>
							);
						})}
					</TabList>
					<TabPanels>
						{builderTabs.map((tab: TeamBuilderTab, index: number) => {
							return <TabPanel key={tab.text}>{tab.component}</TabPanel>;
						})}
					</TabPanels>
				</Tabs>
			)}
		</Box>
	);
};

export default TeamBuilder;
