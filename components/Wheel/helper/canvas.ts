type DrawOptions = {
  canvasContext: CanvasRenderingContext2D;
  canvasSize: number;
  rotation: number;
  teamNames: string[];
};

const colors = ["#9068E1", "#FF715B", "#1EA896", "#7544DB", "#DDD3F1"];

export const easeOut = (x: number): number => {
  return 1 - Math.pow(1 - x, 5);
};

export const calculateTimeProgress = (currentTime: number, startTime: number, endTime: number) => (currentTime - startTime) / (endTime - startTime);

export const draw: (options: DrawOptions) => void = ({
  canvasSize,
  canvasContext,
  rotation,
  teamNames,
}) => {
  const maxValue = 360;
  let currentAngle = 0;
  const x = canvasSize / 2;
  const y = canvasSize / 2;
  canvasContext.setTransform(1, 0, 0, 1, 0, 0);
  canvasContext.clearRect(0, 0, canvasSize, canvasSize);

  canvasContext.translate(x, y);
  canvasContext.rotate(rotation);
  canvasContext.translate(-x, -y);

  teamNames.forEach((t, index) => {
    const endAngle =
      currentAngle + 2 * Math.PI * (maxValue / teamNames.length / maxValue);
    canvasContext.beginPath();
    canvasContext.moveTo(x, y);
    canvasContext.arc(x, y, canvasSize / 2, currentAngle, endAngle);
    canvasContext.fillStyle = colors[index % colors.length];
    canvasContext.fill();

    canvasContext.save();
    canvasContext.translate(x, y);
    canvasContext.rotate(endAngle - (endAngle - currentAngle) / 2);
    canvasContext.font = "bold 12pt Poppins";
    canvasContext.textAlign = "right";
    canvasContext.fillStyle = "black";
    canvasContext.fillText(t, canvasSize * 0.5 - 20, 0);
    canvasContext.restore();

    currentAngle = endAngle;
  });

  // draw the marker
  canvasContext.setTransform(1, 0, 0, 1, 0, 0);
  canvasContext.fillStyle = "#FFF";
  canvasContext.beginPath();
  canvasContext.lineTo(canvasSize - 30, y);
  canvasContext.lineTo(canvasSize, y - 15);
  canvasContext.lineTo(canvasSize, y + 15);
  canvasContext.fill();
};

export const findLandedTeam = (teamNames: string[], endRotation: number) => {
  const degPerChunk = 360 / teamNames.length;
    const radianPerChunk = (degPerChunk * Math.PI) / 180;
    const chunksPassed = endRotation / radianPerChunk;

    console.log(degPerChunk, radianPerChunk, chunksPassed);

    const index = Math.floor(chunksPassed % teamNames.length);

    console.log(index, teamNames);
    return [...teamNames].reverse()[index];
}
