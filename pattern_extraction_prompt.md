You are analyzing YouTube thumbnails for the niche: [YOUR NICHE].

For each attached image, return one JSON object. Number them in the order
I uploaded them. Describe only what is visible. Do not guess why it performed well.

Fields:
- id: image number
- text_on_image: exact text shown, or "none"
- word_count: number of words in that text
- text_position: top | center | bottom | left | right | none
- face_present: true | false
- expression: neutral | happy | shocked | angry | curious | fearful | none
- subject_count: number of people or main characters
- main_subject: one short phrase (e.g. "man pointing at laptop")
- dominant_colors: up to 3 color names
- background: solid | gradient | blurred photo | busy scene | screenshot | other
- contrast: low | medium | high
- graphic_elements: list from [arrow, circle, outline/glow, logo, emoji, before-after split, numbers, none]
- layout: one of [subject-left-text-right, subject-right-text-left, centered subject, split screen, full-bleed scene, text-only, other]
- clutter: minimal | moderate | busy

Return a JSON array only. No commentary. Output should be in a snippet that is easy to copy