#!/bin/bash
set -e -u -o pipefail # Fail on error

pkgf=$(mktemp)
for file in "$@"; do
    (
        cd "$(dirname "$file")"
        # may error if the package does not build on the current platform
        # error message: build .: cannot find module for path .
        # can ignore this error
        set +e
        go list >> "$pkgf" 2> /dev/null
        set -e
    )
done

# change to go module root
# assumes all arguments are in the same go module
cd "$(dirname "$1")"
gomod=$(go env GOMOD)
if [[ -n $gomod ]]; then
  cd "$(dirname "$gomod")"
fi

sort -u < "$pkgf" | xargs go vet
