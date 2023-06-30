import { Box, Button, Flex, Heading } from "@chakra-ui/react";
import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import { calculateTimeProgress, draw, easeOut, findLandedTeam } from "./helper/canvas";

interface IWheelProps {
	teamNames: string[];
	canvasSize: number;
	onTeamLandedOn: (teamLandedOn: string) => void;
}

const Wheel: React.FC<IWheelProps> = ({ teamNames, canvasSize, onTeamLandedOn }) => {
	const canvasRef = useRef<HTMLCanvasElement>(null);
	const [atLeastOneSpin, setAtLeastOneSpin] = useState<boolean>(false);
	const [spinning, setSpinning] = useState<boolean>(false);
	const [rotation, setRotation] = useState<number>(0);

	const animateSpin = useCallback(
		(startTime: number, endTime: number) => {
			if (!canvasRef.current) return;

			const context = canvasRef.current.getContext("2d");

			if (!context) return;

			const animationLoop = (prevRotation: number = 0) => {
				console.log("loop");

				// check current time against end time
				const now = performance.now();
				const timeUp = now >= endTime;

				if (!timeUp) {
					const rotationAmount = 1 - easeOut(calculateTimeProgress(performance.now(), startTime, endTime));
					const newRotation = prevRotation + rotationAmount;

					draw({
						canvasContext: context,
						canvasSize,
						rotation: newRotation,
						teamNames,
					});

					requestAnimationFrame(() => animationLoop(newRotation));
				} else {
					setRotation(prevRotation);
					setSpinning(false);
				}
			};

			setSpinning(true);
			setAtLeastOneSpin(true);
			animationLoop();
		},
		[canvasRef, canvasSize, teamNames]
	);

	const spin = useCallback(() => {
		const maxSeconds = 9;
		const minSeconds = 3;
		const timeout = (Math.random() * (maxSeconds - minSeconds) + minSeconds) * 1000;
		const start = performance.now();
		const end = start + timeout;

		console.log("Start: ", start);
		console.log("Timeout: ", timeout);
		console.log("End: ", end);

		animateSpin(start, end);
	}, [animateSpin]);

	// team selection list updated so need redraw
	useEffect(() => {
		if (!canvasRef.current) return;

		const canvasContext = canvasRef.current.getContext("2d");

		if (!canvasContext) return;

		draw({
			canvasContext,
			canvasSize,
			rotation: 0,
			teamNames,
		});
	}, [teamNames, canvasSize]);

	useEffect(() => {
		console.log("checking landed team");
		const landedTeam = findLandedTeam(teamNames, rotation);
		console.log(landedTeam);
		if (landedTeam && atLeastOneSpin && !spinning) {
			console.log("emitting");
			onTeamLandedOn(landedTeam);
			setAtLeastOneSpin(false);
		}
	}, [teamNames, rotation, atLeastOneSpin, spinning, onTeamLandedOn]);

	return (
		<Flex flexDirection="column" placeItems="center">
			<canvas ref={canvasRef} height={`${canvasSize}px`} width={`${canvasSize}px`} />
			<Box mt={8}>
				<Button onClick={spin}>Spin</Button>
			</Box>
		</Flex>
	);
};

export default Wheel;
