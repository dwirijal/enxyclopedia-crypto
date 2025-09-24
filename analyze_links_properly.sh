#!/bin/bash

echo "=== ANALYZING WIKI LINKS IN REPOSITORY ==="
echo ""

# Extract all unique wiki links (without .md extension)
echo "1. Extracting all wiki links..."
grep -r "\[\[.*\]\]" . --include="*.md" | sed 's/.*\[\[\(.*\)\]\].*/\1/' | sed 's/\.md$//' | sed 's/|.*$//' | sort | uniq > /tmp/all_links.txt

# Get all existing files (without .md extension)
echo "2. Getting existing files..."
find . -name "*.md" -type f | sed 's|^\./||' | sed 's/\.md$//' | sort > /tmp/existing_files.txt

# Find broken links
echo "3. Finding broken links..."
comm -23 /tmp/all_links.txt /tmp/existing_files.txt > /tmp/broken_links.txt

# Find working links
echo "4. Finding working links..."
comm -12 /tmp/all_links.txt /tmp/existing_files.txt > /tmp/working_links.txt

echo ""
echo "=== SUMMARY ==="
echo "Total unique wiki links found: $(wc -l < /tmp/all_links.txt)"
echo "Total existing files: $(wc -l < /tmp/existing_files.txt)"
echo "Working links: $(wc -l < /tmp/working_links.txt)"
echo "Broken links: $(wc -l < /tmp/broken_links.txt)"
echo ""

echo "=== SAMPLE OF WORKING LINKS ==="
head -10 /tmp/working_links.txt
echo ""

echo "=== SAMPLE OF BROKEN LINKS ==="
head -20 /tmp/broken_links.txt
echo ""

echo "=== MOST COMMON BROKEN LINKS (appearing multiple times) ==="
# Count occurrences of broken links in the actual files
grep -r "\[\[.*\]\]" . --include="*.md" | sed 's/.*\[\[\(.*\)\]\].*/\1/' | sed 's/\.md$//' | sed 's/|.*$//' | sort | uniq -c | sort -nr | while read count link; do
    if grep -q "^$link$" /tmp/broken_links.txt; then
        echo "$count occurrences: $link"
    fi
done | head -10