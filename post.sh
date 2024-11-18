#!/bin/bash

# Get the custom name argument
title="$1"

# Get the current date in YYYY-MM-DD format
date_string=$(date +%Y-%m-%d)

title_line="title: ${title}" 
time=$(date +"%H:%M:%S -0800")
time_line="date: ${date_string} ${time}"

# Create the file name with the date and custom name
file_name="${date_string}_${title}.md"

# Create the file
touch "$file_name"

# Add header

cat << EOF > $file_name
---
${title_line}
${time_line}
categories: [testing, basic]
tags: [posts, tests]     # TAG names should always be lowercase
author: eric
media_subpath: /assets/img/
---

# ${title}
EOF

echo "File created: $file_name"
