# How to Add "AI Projects" to Your Portfolio Navigation

## The Problem
`AIAgent.html` exists in your repo but is not linked from any page's `<nav>` block,
so visitors have no way to reach it.

## The Fix
Add one `<li>` line to the `<nav>` block in **every** HTML page in your repo.

---

## Pages that need updating

| File | Status |
|------|--------|
| `index.html` | ❌ Missing AI Projects link |
| `generic.html` | ❌ Missing AI Projects link |
| `Certifications2.html` | ❌ Missing AI Projects link |
| `Data Analysis.html` | ❌ Missing AI Projects link |
| `SCM.html` | ❌ Missing AI Projects link |
| `Hobbies.html` | ❌ Missing AI Projects link |
| `AIAgent.html` | ✅ Already has it (it's the page itself) |

---

## What to change in each file

Find this block in the `<nav>` section:

```html
<li><a href="SCM.html">SCM Analysis</a></li>
<li><a href="Hobbies.html">Hobbies</a></li>
```

Replace it with:

```html
<li><a href="SCM.html">SCM Analysis</a></li>
<li><a href="AIAgent.html">AI Projects</a></li>
<li><a href="Hobbies.html">Hobbies</a></li>
```

That's it — one line added in 6 files.

---

## Also recommended: Add an "AI Projects" card on index.html

In `index.html`, you have feature sections for your experience and skills.
Consider adding a teaser section that links visitors to the AI Projects page,
so it's discoverable even before they use the nav.

See the ready-to-paste snippet at the bottom of this file.

---

## Option A: Edit directly on GitHub (easiest)

1. Go to https://github.com/jddata360/jdportfolio
2. Click on `index.html`
3. Click the pencil ✏️ icon (Edit this file)
4. Find `<li><a href="SCM.html">SCM Analysis</a></li>` and add the AI Projects line after it
5. Click **Commit changes**
6. Repeat for the other 5 files

---

## Option B: Use the pre-edited files provided

The updated HTML files are included alongside this document.
Upload/replace each one in your GitHub repo.

---

## Teaser snippet to paste in index.html (optional but recommended)

Paste this just before the closing `</div>` of `<div id="main">`:

```html
<!-- AI Projects Teaser -->
<section id="ai-projects" class="main special">
  <header class="major">
    <h2>AI Projects</h2>
    <p>Built a fully local AI-powered Supply Chain Analyst using Llama 3.1 &amp; Python — no cloud, no API keys, your data stays private.</p>
  </header>
  <ul class="features">
    <li>
      <span class="icon solid major style1 fa-robot"></span>
      <h3>SCM Analyst Agent</h3>
      <p>Load any CSV and ask questions in plain English. Powered by Llama 3.1 running entirely on local hardware via Ollama.</p>
    </li>
    <li>
      <span class="icon major style3 fa-chart-bar"></span>
      <h3>Auto KPI Dashboard</h3>
      <p>Instant KPI cards, interactive Plotly charts, demand forecasting, and supplier scorecards — all generated automatically.</p>
    </li>
    <li>
      <span class="icon major style5 fa-lock"></span>
      <h3>100% Private</h3>
      <p>No data ever leaves your machine. Built for enterprise SCM environments where confidentiality is non-negotiable.</p>
    </li>
  </ul>
  <footer class="major">
    <ul class="actions special">
      <li><a href="AIAgent.html" class="button primary">View AI Project</a></li>
    </ul>
  </footer>
</section>
```
