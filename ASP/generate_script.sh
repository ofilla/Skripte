#!/bin/sh

filename_base="Advanced Statistical Physics"
md="../markdown/$filename_base.md"
pdf="../pdf/$filename_base.pdf"


# empty file
echo > "$md"
cat > "$md" <<EOF
---
title: $filename_base
author: "Prof. Dr. J. Krug & Oliver Filla"
date: $(date -I)
---
EOF

# concat
for f in lectures/*.md
do
    echo >> "$md"
    sed -e '0,/|continued]/d; /|continued]/!b' "$f" | sed -e '/|to be continued ...]/,$d' >> "$md"
    echo >> "$md"
done

# convert
./convert_to_pdf.sh "$md" "$pdf" --toc --toc-depth 6
