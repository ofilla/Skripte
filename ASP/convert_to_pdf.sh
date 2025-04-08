#!/bin/bash

in_file="$1"
out_file="${2:-${1%md}pdf}"
shift 2 # pass other parameters to pandoc

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

echo "$file" | sed \
	-e 's/eqnarray/eqnarray*/g' \
	-e 's/\\braket/\\expval/g' \
	-e 's/^\$\$$//g' \
	-re 's/\[\[[0-9]{14}\]\]//g' \
	-re "s/\[\[([0-9]{14}(#[A-Za-z0-9: .'-]+)?\|)([A-Za-z0-9:.'\(\)\/ -]+)\]\]/\3/g" \
	| pandoc -o "$out_file" $@
