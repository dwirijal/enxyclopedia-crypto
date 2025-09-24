#!/bin/bash

# Extract all linked files from wiki links (keeping .md extension)
grep -r "\[\[.*\]\]" . --include="*.md" | sed 's/.*\[\[\(.*\)\]\].*/\1/' | sed 's/|.*$//' | sort | uniq > /tmp/linked_files_with_md.txt

# Get all existing files (with .md extension)
find . -name "*.md" -type f | sed 's|^\./||' | sort > /tmp/existing_files_with_md.txt

# Find missing files
echo "=== MISSING FILES ==="
comm -23 /tmp/linked_files_with_md.txt /tmp/existing_files_with_md.txt

echo ""
echo "=== LINKS THAT EXIST BUT AREN'T FOUND ==="
comm -13 /tmp/linked_files_with_md.txt /tmp/existing_files_with_md.txt | head -20

echo ""
echo "=== SUMMARY ==="
echo "Total linked files: $(wc -l < /tmp/linked_files_with_md.txt)"
echo "Total existing files: $(wc -l < /tmp/existing_files_with_md.txt)"
echo "Missing files: $(comm -23 /tmp/linked_files_with_md.txt /tmp/existing_files_with_md.txt | wc -l)"

echo ""
echo "=== SAMPLE OF EXISTING FILES THAT ARE LINKED ==="
comm -12 /tmp/linked_files_with_md.txt /tmp/existing_files_with_md.txt | head -10