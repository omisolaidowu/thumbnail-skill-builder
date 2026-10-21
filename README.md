# Thumbnail Skill Builder 🎬🤖

An open-source, data-informed workflow to reverse-engineer high-performing YouTube thumbnails, extract visual composition schemas, and compile custom Claude Skills for your niche.

Say goodbye to messy, unreadable AI text and pixel blur. This toolkit sets up a systematic workflow: scrape real thumbnail data, batch your images effortlessly, extract design patterns into structured JSON, and generate mobile-optimized thumbnail concepts with dedicated negative space for your headlines.

---

## 📂 Project Structure

```text
thumbnail_project/
│
├── batch_files.bat               # Windows batch script to sort images into folders of 10/20
├── example_json.json             # Example schema showing the extracted visual pattern structure
├── pattern_extraction_prompt.md  # Strict AI prompt used to analyze images & output JSON
└── thumbnail-skill-builder.md    # Core framework guide to compiling custom Claude Skills
```

---

## 🚀 Quick Start Guide

### Step 1: Scrape Niche Visual Data
1. Install a browser scraper like **Thunderbit** (or any tool of your choice).
2. Go to YouTube, search your niche, and scrape thumbnail image URLs along with their metadata (views, titles, etc.) into a clean dataset.
3. Download the raw image zip file and extract it into a working directory.

### Step 2: Automate Image Batching
AI models have file upload limits per prompt. To make analysis fast and clean:
1. Copy `batch_files.bat` directly into the folder containing your extracted thumbnail images.
2. Double-click `batch_files.bat`. It will automatically organize your images into subfolders (batches of 10 or 20).

### Step 3: Extract Visual Patterns (`pattern_extraction_prompt.md`)
1. Open your AI assistant (ChatGPT, Gemini, or Claude).
2. Upload a batch of images and feed it the strict extraction prompt found in `pattern_extraction_prompt.md`.
3. The AI will analyze subject placement, color contrast, focal points, and negative space allocation, returning a structured JSON pattern block.

### Step 4: Compile Your Niche JSON & Build Your Skill
1. Combine your batch JSON outputs into a single master file (e.g., `thumbnail_pattern.json`) using VS Code.
2. Follow the instructions in `thumbnail-skill-builder.md` to feed your pattern JSON into Claude and compile a ready-to-install custom niche skill.

---

## 💰 Looking for the Done-For-You Version?
If you want to skip the scraping and compilation process entirely, check out the **Pro Kit on Gumroad**, which includes pre-compiled V1 skills, raw image folders, and master JSON datasets across 4 high-RPM niches (AI Automation, Tech Gadgets, Personal Finance, and YouTube Growth): [Get it on Gumroad](https://omisola7.gumroad.com/l/isdmm)

## 📝 License
Distributed under the MIT License. See `LICENSE` for more information.