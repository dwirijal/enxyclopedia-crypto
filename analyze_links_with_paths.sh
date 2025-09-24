#!/bin/bash

echo "=== DETAILED LINK ANALYSIS WITH PATHS ==="
echo ""

# Create a lookup table of existing files (with full paths)
echo "1. Creating file lookup table..."
find . -name "*.md" -type f | sed 's|^\./||' | sed 's/\.md$//' | sort > /tmp/existing_full_paths.txt

# Extract all wiki links and note which files they're in
echo "2. Extracting wiki links with context..."
grep -r "\[\[.*\]\]" . --include="*.md" | while read -r line; do
    file_path=$(echo "$line" | sed 's|:.*||')
    links=$(echo "$line" | sed 's|.*\[\[\(.*\)\]\].*|\1|' | sed 's/\.md$//' | sed 's/|.*$//')
    for link in $links; do
        echo "$file_path|$link"
    done
done > /tmp/links_with_context.txt

# Check each link
echo "3. Analyzing each link..."
working_count=0
broken_count=0
broken_links_file="/tmp/broken_links_detailed.txt"
working_links_file="/tmp/working_links_detailed.txt"

> "$broken_links_file"
> "$working_links_file"

while IFS='|' read -r source_file target_link; do
    # Check if target exists as exact match
    if grep -q "^$target_link$" /tmp/existing_full_paths.txt; then
        echo "✓ $source_file -> $target_link" >> "$working_links_file"
        working_count=$((working_count + 1))
    else
        # Check if target exists with full path
        found=false
        while IFS= read -r existing_file; do
            if [[ "$existing_file" == *"$target_link"* ]]; then
                echo "⚠ $source_file -> $target_link (found as: $existing_file)" >> "$working_links_file"
                working_count=$((working_count + 1))
                found=true
                break
            fi
        done < /tmp/existing_full_paths.txt

        if ! $found; then
            echo "✗ $source_file -> $target_link" >> "$broken_links_file"
            broken_count=$((broken_count + 1))
        fi
    fi
done < /tmp/links_with_context.txt

echo "=== SUMMARY ==="
echo "Total links analyzed: $((working_count + broken_count))"
echo "Working links: $working_count"
echo "Broken links: $broken_count"
echo ""

echo "=== TOP BROKEN LINKS (by frequency) ==="
cat "$broken_links_file" | sed 's|.* -> ||' | sort | uniq -c | sort -nr | head -10

echo ""
echo "=== SAMPLE WORKING LINKS ==="
head -10 "$working_links_file"

echo ""
echo "=== SAMPLE BROKEN LINKS ==="
head -10 "$broken_links_file"

echo ""
echo "=== FILES WITH MOST BROKEN LINKS ==="
cat "$broken_links_file" | sed 's| .*||' | sort | uniq -c | sort -nr | head -10