import { extendTheme } from "@chakra-ui/react";
import { StyleFunctionProps } from "@chakra-ui/theme-tools";
import { Dict } from "@chakra-ui/utils";

const styles = {
	global: (props: Dict<any> | StyleFunctionProps) => ({
		body: {
			backgroundColor: "white",
		},
	}),
};

const colors = {
	black: "#111113",
	white: "#F7F7F7",
	purple: "#7544DB",
	purpleLight: "#9068E1",
	purpleLightest: "#DDD3F1",
};

const fonts = {
	heading: "'Poppins', sans-serif",
	body: "'Poppins', sans-serif",
};

const components = {
	Container: {
		baseStyle: {
			maxW: "120ch",
		},
	},
	Heading: {
		baseStyle: {
			color: "purple",
		},
	},
	Menu: {
		baseStyle: {
			width: "100%",
		},
	},
};

const theme = extendTheme({ styles, colors, fonts, components });
export default theme;
