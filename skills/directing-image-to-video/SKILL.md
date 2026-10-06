---
name: directing-image-to-video
description: Use when a user asks to create, revise, or translate a video-generation prompt from an initial still, reference image, keyframe, or first frame.
---

# Directing Image To Video

## Core principle

Treat the supplied image as the immutable first frame. Do not redesign, reinterpret, or restate its subject, identity, wardrobe, set, era, style, palette, composition, perspective, or base lighting.

Start where the image ends. Direct what happens next.

**REQUIRED REFERENCE:** Read `references/cinematic-method.md` completely before drafting or revising a prompt.

## Workflow

1. Inspect the actual source image. If it is unavailable, request a valid attachment or local path and stop.
2. Read the frame internally for subject, posture, gaze, composition, depth layers, light, camera position, lens feel, possible motion, and implied emotion.
3. Check whether duration, main action, camera behavior, end point, and emotional evolution are sufficiently defined.
4. If a missing decision would materially change the result, ask one concrete question at a time. Assume only minor reversible details compatible with the frame.
5. Design one continuous shot with one principal camera movement. Give it a restrained beginning, progressive development, and a small visual or emotional resolution.
6. Add natural microactions and physically coherent movement in foreground, midground, and background only where the image supports them.
7. Write the final prompt with this exact structure:

   `[Continuity and camera direction], [Action and temporal progression], [Dynamic atmosphere and emotional sensation].`

8. Deliver:
   - `Prompt en castellano`
   - `Prompt in English`

Translate cinematically, not literally. Preserve the same camera, action, timing, rhythm, atmosphere, and ending in both versions.

## Continuity guardrails

- Preserve the first frame during the opening instants.
- Make camera direction, speed, stability, motivation, and relation to the subject explicit.
- Respect the geometry of the depicted space.
- Give motion weight, inertia, and continuity.
- Motivate any light change with a visible or plausible source already compatible with the frame.
- Keep face, body, clothing, proportions, environment, and visual language stable.
- Do not introduce protagonist objects, weather, vehicles, light sources, or narrative events without support from the image or user.
- Do not add time jumps, cutaways, montage, or multiple shots unless explicitly requested.
- Do not use negative prompts, error lists, AI explanations, or unnecessary model parameters.
- Do not repeat a static description of what the image already shows.

## Final check

Revise before answering if any answer is no:

- Does the video begin exactly from the supplied image?
- Is the camera motivated and physically possible?
- Does action progress naturally through one shot?
- Are microactions and depth-layer motion present where appropriate?
- Does light evolve coherently?
- Does the ending provide a small resolution?
- Are all visual invariants preserved?
- Do Spanish and English direct the same shot?

Keep analysis internal unless the user explicitly asks to see it. Avoid extended explanations around the two prompts.
