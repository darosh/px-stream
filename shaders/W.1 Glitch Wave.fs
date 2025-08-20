/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Audio Visualizer"],
    "INPUTS": [
        {"NAME": "waveImage", "TYPE": "audio", "MAX": "1024"},
        {"NAME": "waveSize", "TYPE": "float", "DEFAULT": 0.01, "MIN": 0, "MAX": 0.5},
        {"NAME": "frameHold", "TYPE": "float", "DEFAULT": 6, "MIN": 1, "MAX": 240},
        {"NAME": "edgeGlow", "TYPE": "float", "DEFAULT": 8, "MIN": 0, "MAX": 240},
        {"NAME": "glitch", "TYPE": "bool"}
    ],
    "PASSES": [
        {"TARGET": "prevWave", "PERSISTENT": true, "WIDTH": 1024, "HEIGHT": 1},
        {"TARGET": "currWave", "PERSISTENT": true, "WIDTH": 1024, "HEIGHT": 1},
        {"TARGET": "outputFrame"}
    ],
    "ISFVSN": "2"
}*/

// Returns shortest distance from point p to the segment [a, b]
float pointToSegmentDist(vec2 p, vec2 a, vec2 b) {
	vec2 ab = b - a;
	float abLen2 = dot(ab, ab);
    // Project point onto segment, clamp t to [0,1]
	float t = clamp(dot(p - a, ab) / abLen2, 0.0, 1.0);
	vec2 closest = a + t * ab;
	return distance(p, closest);
}

void main() {
	float fi = float(FRAMEINDEX);
	float smoothTime = 1. / fi;
	bool is = mod(fi, frameHold) < 1.;

	if(PASSINDEX == 0) {
		if(is) {
			gl_FragColor = IMG_THIS_NORM_PIXEL(currWave);
		} else {
			gl_FragColor = IMG_THIS_NORM_PIXEL(prevWave);
		}
	} else if(PASSINDEX == 1) {
		if(is) {
			vec2 loc = isf_FragNormCoord;
			float channel = 0.0;
			gl_FragColor = IMG_NORM_PIXEL(waveImage, vec2(loc.x, channel));
		} else {
			gl_FragColor = IMG_THIS_NORM_PIXEL(currWave);
		}
	} else if(PASSINDEX == 2) {
		vec2 loc = isf_FragNormCoord;

		// Progress from 0 → 1 between captures
		float cycle = mod(fi, frameHold) / (frameHold - 1.);

		// Sample previous & current waveforms
		vec4 prevWaveVal = IMG_NORM_PIXEL(prevWave, vec2(loc.x, 0.0));
		vec4 currWaveVal = IMG_NORM_PIXEL(currWave, vec2(loc.x, 0.0));

		// Interpolate smoothly
		vec4 interpWave = mix(prevWaveVal, currWaveVal, smoothstep(0.0, 1.0, cycle));

		// Draw waveform
		vec4 waveAdd = (vec4(1.0) - smoothstep(0.0, waveSize, abs(interpWave.r - loc.y)));

		if(glitch) {
			waveAdd += (vec4(1.0) - smoothstep(0.0, waveSize, abs(interpWave.r - loc.x)));
		}

		// float dx = abs(loc.x - 0.5);  // horizontal distance from waveform sample
		// float dy = abs(loc.y - interpWave.r); // vertical distance from waveform sample

		// float thicknessX = 0.1; // horizontal half-width
		// float thicknessY = waveSize; // vertical half-height

		// // Shape mask: smaller values → more inside the band
		// float shapeMask = max(dx / thicknessX, dy / thicknessY);

		// // Invert and smooth
		// waveAdd += vec4(1.0 - smoothstep(0.0, 1.0, shapeMask));

		if(edgeGlow > 0.0) {
			// Distance in X from the waveform's sample position
			float dx = abs(loc.x - loc.x); // here, loc.x is itself, so instead use this pixel's X from the waveform's sample
			// Actually: we treat loc.x as the horizontal sample position, so dx=0. We only use dy for vertical.
			// For ribbon thickness: use both axes distance from the curve
			float dy = abs(loc.y - interpWave.r);

			float thicknessX = 0.02; // horizontal half-width
			float thicknessY = waveSize; // vertical half-height

			// Shape mask: 0 at center, grows outward
			float shapeMask = max(dx / thicknessX, dy / thicknessY);

			// Core ribbon (bright center)
			float core = 1.0 - smoothstep(0.0, 1.0, shapeMask);

			// Glow layer (wider but dimmer)
			float glow = 1.0 - smoothstep(0.0, edgeGlow, shapeMask); // twice as wide

			// Final color: bright core + faint glow
			waveAdd += core * 1. + glow * 1. * 0.5;
		}

		float sampleSpacing = 1.0 / RENDERSIZE.x; // one pixel in normalized coords
		float yCenter = interpWave.r;

		vec4 prevWaveValL = IMG_NORM_PIXEL(prevWave, vec2(loc.x - sampleSpacing, 0.0));
		vec4 currWaveValL = IMG_NORM_PIXEL(currWave, vec2(loc.x - sampleSpacing, 0.0));
		vec4 prevWaveValR = IMG_NORM_PIXEL(prevWave, vec2(loc.x + sampleSpacing, 0.0));
		vec4 currWaveValR = IMG_NORM_PIXEL(currWave, vec2(loc.x + sampleSpacing, 0.0));

		// float yLeft     = IMG_NORM_PIXEL(currWave, vec2(loc.x - sampleSpacing, 0.0)).r;
		// float yRight    = IMG_NORM_PIXEL(currWave, vec2(loc.x + sampleSpacing, 0.0)).r;

		float yLeft = mix(prevWaveValL.r, currWaveValL.r, smoothstep(0.0, 1.0, cycle));
		float yRight = mix(prevWaveValR.r, currWaveValR.r, smoothstep(0.0, 1.0, cycle));

		float distToLeftSeg = pointToSegmentDist(loc, vec2(loc.x - sampleSpacing, yLeft), vec2(loc.x, yCenter));
		float distToRightSeg = pointToSegmentDist(loc, vec2(loc.x, yCenter), vec2(loc.x + sampleSpacing, yRight));

		float minDist = min(distToLeftSeg, distToRightSeg);
		float thickness = waveSize; // controls line width
		float alpha = 1.0 - smoothstep(0.0, thickness, minDist);

		waveAdd += vec4(alpha);

		gl_FragColor = vec4(vec3(waveAdd), 1.0);
	}
}
