import { Box, Button, Flex, useCallbackRef } from "@chakra-ui/react";
import { useCallback, useEffect, useRef, useState } from "react";

interface IWheelProps {
	teamNames: string[];
	canvasSize: number;
}

const colors = ["#9068E1", "#FF715B", "#1EA896", "#7544DB", "#DDD3F1"];

const Wheel: React.FC<IWheelProps> = ({ teamNames, canvasSize }) => {
	const canvasRef = useRef<HTMLCanvasElement>(null);
	const [rotate, setRotate] = useState<boolean>(false);
	const [rotation, setRotation] = useState<number>(0);
	const [spinStartTime, setSpinStartTime] = useState<number>(0);
	const [spinEndTime, setSpinEndTime] = useState<number>(0);

	const spin = () => {
		const maxSeconds = 9;
		const minSeconds = 3;
		const timeout = (Math.random() * (maxSeconds - minSeconds) + minSeconds) * 1000;
		const now = performance.now();
		setSpinStartTime(now);
		setSpinEndTime(now + timeout);

		console.log("Start: ", now);
		console.log("Timeout: ", timeout);
		console.log("End: ", now + timeout);
		setRotate(true);
		setTimeout(() => {
			stop();
			console.log(getLandedOnTeam());
		}, timeout);
	};

	const stop = () => {
		console.log(getLandedOnTeam());
	};

	const getLandedOnTeam = () => {
		const degPerChunk = 360 / teamNames.length;
		const radianPerChunk = (degPerChunk * Math.PI) / 180;
		const chunksPassed = rotation / radianPerChunk;

		console.log(degPerChunk, radianPerChunk, chunksPassed);

		const index = Math.floor(chunksPassed % teamNames.length);

		console.log(index, teamNames);
		return [...teamNames].reverse()[index];
	};

	const easeOut = (x: number): number => {
		return 1 - Math.pow(1 - x, 5);
	};

	const timeProgress = useCallback(
		(currentTime: number) => {
			return (currentTime - spinStartTime) / (spinEndTime - spinStartTime);
		},
		[spinEndTime, spinStartTime]
	);

	const draw = useCallback(() => {
		if (canvasRef.current) {
			const maxValue = 360;
			let currentAngle = 0;
			const x = canvasSize / 2;
			const y = canvasSize / 2;
			const ctx = canvasRef.current.getContext("2d");

			if (ctx) {
				ctx.setTransform(1, 0, 0, 1, 0, 0);
				ctx.clearRect(0, 0, canvasSize, canvasSize);

				if (rotate) {
					const rotationAmount = 1 - easeOut(timeProgress(performance.now()));
					setRotation(rotation + rotationAmount);
					console.log(rotation);
				}

				ctx.translate(x, y);
				ctx.rotate(rotation);
				ctx.translate(-x, -y);

				teamNames.forEach((t, index) => {
					const endAngle = currentAngle + 2 * Math.PI * (maxValue / teamNames.length / maxValue);
					ctx.beginPath();
					ctx.moveTo(x, y);
					ctx.arc(x, y, canvasSize / 2, currentAngle, endAngle);
					ctx.fillStyle = colors[index % colors.length];
					ctx.fill();

					ctx.save();
					ctx.translate(x, y);
					ctx.rotate(endAngle - (endAngle - currentAngle) / 2);
					ctx.font = "bold 12pt Poppins";
					ctx.textAlign = "right";
					ctx.fillStyle = "black";
					ctx.fillText(t, canvasSize * 0.5 - 20, 0);
					ctx.restore();

					currentAngle = endAngle;
				});

				// draw the marker
				ctx.setTransform(1, 0, 0, 1, 0, 0);
				ctx.fillStyle = "#FFF";
				ctx.beginPath();
				ctx.lineTo(canvasSize - 30, y);
				ctx.lineTo(canvasSize, y - 15);
				ctx.lineTo(canvasSize, y + 15);
				ctx.fill();
			}
		}
	}, [canvasSize, rotate, rotation, teamNames, timeProgress]);

	useEffect(() => {
		draw();
	}, [draw]);

	return (
		<Flex flexDirection="column" placeItems="center">
			<canvas ref={canvasRef} height={`${canvasSize}px`} width={`${canvasSize}px`} />
			<Box mt={8}>
				<Button onClick={spin}>Spin</Button>
				<Button onClick={stop}>Stop</Button>
			</Box>
		</Flex>
	);
};

export default Wheel;
