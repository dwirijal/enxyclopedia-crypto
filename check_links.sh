#!/bin/bash

# Extract all linked files from wiki links
grep -r "\[\[.*\]\]" . --include="*.md" | sed 's/.*\[\[\(.*\)\]\].*/\1/' | sed 's/\.md$//' | sed 's/|.*$//' | sort | uniq > /tmp/linked_files.txt

# Get all existing files
find . -name "*.md" -type f | sed 's|^\./||' | sed 's/\.md$//' | sort > /tmp/existing_files.txt

# Find missing files
echo "=== MISSING FILES ==="
comm -23 /tmp/linked_files.txt /tmp/existing_files.txt | sort

echo ""
echo "=== FILES THAT EXIST BUT ARE LINKED DIFFERENTLY ==="
comm -13 /tmp/linked_files.txt /tmp/existing_files.txt | grep -v "^docs/" | grep -v "^[0-9]" | head -20

echo ""
echo "=== SUMMARY ==="
echo "Total linked files: $(wc -l < /tmp/linked_files.txt)"
echo "Total existing files: $(wc -l < /tmp/existing_files.txt)"
echo "Missing files: $(comm -23 /tmp/linked_files.txt /tmp/existing_files.txt | wc -l)"