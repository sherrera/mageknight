// Lightweight client to fetch mini metrics and provide helpers for UI
async function fetchMinisMetrics() {
  try {
    const resp = await fetch('/api/minis/metrics');
    if (!resp.ok) return null;
    return await resp.json();
  } catch (e) {
    console.error('Failed to load minis metrics', e);
    return null;
  }
}

function zToColor(z) {
  // Simple color scale: red for negative, green for positive, grey for neutral
  if (z === null || z === undefined) return '#cccccc';
  if (Math.abs(z) < 0.5) return '#c6e48b'; // light green
  if (Math.abs(z) < 1.5) return '#7bc96f';
  if (z >= 1.5) return '#196127';
  if (z <= -1.5) return '#8b0000';
  return '#cccccc';
}

export { fetchMinisMetrics, zToColor };
