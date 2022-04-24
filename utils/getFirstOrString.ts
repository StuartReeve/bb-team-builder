export function getFirstOrString(val: string | string[]): string {
	if (Array.isArray(val) && val.length > 0) return val[0];
	if (typeof val === "string") return val;

	return "unknown";
}
