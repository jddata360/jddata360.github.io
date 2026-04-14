#!/bin/bash
# Run this script from the root of your jdportfolio repo
# It adds the "AI Projects" nav link to all HTML files that are missing it

FILES=("index.html" "generic.html" "Certifications2.html" "Data Analysis.html" "SCM.html" "Hobbies.html")

OLD='<li><a href="SCM.html">SCM Analysis</a></li>
				<li><a href="Hobbies.html">Hobbies</a></li>'

NEW='<li><a href="SCM.html">SCM Analysis</a></li>
				<li><a href="AIAgent.html">AI Projects</a></li>
				<li><a href="Hobbies.html">Hobbies</a></li>'

for file in "${FILES[@]}"; do
    if [ -f "$file" ]; then
        # Use python for reliable multi-line replacement
        python3 - "$file" << 'PYEOF'
import sys, re

filepath = sys.argv[1]
with open(filepath, 'r', encoding='utf-8') as f:
    content = f.read()

old = '<li><a href="SCM.html">SCM Analysis</a></li>'
new = '<li><a href="SCM.html">SCM Analysis</a></li>\n\t\t\t\t<li><a href="AIAgent.html">AI Projects</a></li>'

if '<a href="AIAgent.html">' in content:
    print(f"  SKIPPED {filepath} (already has AI Projects link)")
elif old in content:
    content = content.replace(old, new, 1)
    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(content)
    print(f"  FIXED {filepath}")
else:
    print(f"  WARNING: Could not find expected nav pattern in {filepath} - check manually")
PYEOF
    else
        echo "  NOT FOUND: $file"
    fi
done

echo ""
echo "Done! Commit and push your changes:"
echo "  git add -A && git commit -m 'Add AI Projects to navigation' && git push"
