---
name: thumbnail-skill-builder
description: Builds a niche-specific thumbnail-concepts skill from a thumbnail pattern JSON (the output of a niche thumbnail analysis). Use whenever the user provides or mentions a pattern JSON, thumbnail style data, or niche thumbnail research and wants it turned into a reusable thumbnail-concepts skill, or wants to generate or refresh that skill for a new niche, even if they never say "skill builder".
---
 
# Thumbnail Skill Builder
 
Turn a pattern JSON (how often each visual feature appears in a niche's
thumbnails) into a ready-to-install `thumbnail-concepts-<niche>` skill. The
generated skill takes a video script and returns thumbnail concepts, image
prompts and headlines that follow the niche's style guide.
 
The script renders the style guide, so every number is copied from the JSON and
none are retyped. Your job is to get a valid JSON, run the script, and review the
result.
 
## Workflow
 
1. **Get the pattern JSON.** Accept a file path or pasted JSON (save pasted JSON
   to a file first). If the user has only raw analysis, such as a CSV of coded
   thumbnails or a prose summary, read `references/pattern-schema.md` and
   help convert it to the schema. Compute shares from the data rather than
   estimating them, and ask for the missing numbers instead of inventing any.
   Fabricated percentages end up as "rules" in the final skill, so a gap in the
   JSON is better than a guess.
2. **Validate.**
   ```bash
   python3 scripts/build_skill.py PATTERN.json --validate-only
   ```
   Fix errors. Read warnings; a distribution that sums well above 100 usually
   means a counting mistake.
3. **Build.**
   ```bash
   python3 scripts/build_skill.py PATTERN.json --out OUT_DIR
   ```
   This writes `OUT_DIR/thumbnail-concepts-<slug>/SKILL.md` plus
   `references/pattern.json` (kept for traceability and future refreshes). Use
   `--name` to override the skill name.
4. **Review the generated SKILL.md.** Read it through once and check:
   - Each figure matches the JSON.
   - If the script reported auto-derived pattern-breaks, rewrite them into
     specific, usable ideas, or replace them with `pattern_breaks` written into
     the JSON. Auto-derived ones only note that a value is rare; they do not know
     whether it would work.
   - The caveats are honest. With no outlier scores, the guide must say it
     describes what is common, not what wins.
   - No new claims crept in that the JSON does not support. Prose polish is fine;
     new statistics are not.
5. **Deliver.** Send `SKILL.md` with `SendUserFile`. If `package_skill.py` from
   the skill-creator is available, package the folder into a `.skill` file and
   send that instead. In one or two sentences, say which niche and sample size
   it was built from and name any caveat or auto-derived section.
6. **Offer a test.** Suggest running the new skill on a real script from that
   niche. If its concepts ignore a rule in the guide, the fix belongs in the
   JSON or the template, not in a hand-edit of one output.
## Why it is built this way
 
- **Template plus data.** `assets/skill_template.md` holds the process, output
  format and rules shared by every niche. Only the style guide changes. Edit the
  template once to improve all future niche skills.
- **Generated skills stay lean.** The output is one SKILL.md with the guide at
  the bottom. The user pastes in a script, and the skill has what it needs.
- **Prevalence is not performance.** The pattern JSON usually counts what is
  common. The generated guide keeps that distinction and sends differentiation
  through the pattern-break section and YouTube's Test & Compare.
## Files
 
- `scripts/build_skill.py`: validate and build
- `assets/skill_template.md`: the skeleton of the generated skill
- `assets/example_pattern.json`: a complete example (AI Automation niche)
- `references/pattern-schema.md`: every field and the validation rules