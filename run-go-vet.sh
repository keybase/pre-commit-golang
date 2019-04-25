#!/bin/bash
set -e -u -o pipefail # Fail on error
pkgf=$(mktemp)
for file in "$@"; do
    (
        cd "$(dirname "$file")"
        go list >> "$pkgf"
    )
done
sort -u < "$pkgf" | xargs go vet
