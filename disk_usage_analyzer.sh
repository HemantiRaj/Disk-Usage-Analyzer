


#!/bin/bash

# Display disk usage summary
echo "Disk Usage Summary:"
df -h --total
echo

# List top 10 largest directories
echo "Top 10 Largest Directories:"
du -ah / | sort -rh | head -n 10
echo

# Check disk usage for a specific directory
read -p "Enter a directory path to analyze (or press enter to skip): " dir
if [ -d "$dir" ]; then
    echo "Disk usage for directory $dir:"
    du -sh "$dir"
else
    echo "No directory specified or invalid directory."
fi
echo

# Find and list the top 10 largest files
echo "Top 10 Largest Files:"
find / -type f -exec du -h {} + 2>/dev/null | sort -rh | head -n 10
echo

