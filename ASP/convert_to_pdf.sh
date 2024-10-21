#!/bin/bash

in_file="$1"
out_file="${2:-${1%md}pdf}"

echo "convert $in_file to $out_file"

file="$(cat <<EOF
---
header-includes:
  - \\usepackage{amsmath}
  - \\usepackage{physics}
---
$(cat "$in_file")
EOF
)"

echo "$file" | sed -e 's/eqnarray/eqnarray*/g' -e 's/\\braket/\\expval/g' -e 's/^\$\$$//g' | pandoc -o "$out_file"
