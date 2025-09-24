# Obsidian Notes Backup Script

# This script automatically commits changes to your Obsidian notes

# Add all changes
git add .

# Check if there are changes to commit
if git diff --cached --quiet; then
    echo "No changes to commit"
else
    # Commit with timestamp
    git commit -m "Auto-backup: $(date +"%Y-%m-%d %H:%M:%S")"
    
    echo "Backup completed successfully"
fi
