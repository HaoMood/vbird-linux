#!/bin/bash
# sh08.sh
# Show and shift arguments.
# Hao Zhang
# 2016.10.28  First release

echo "# arguments: $#"
echo "All arguments: $@"

shift
echo "# arguments: $#"
echo "All arguments: $@"

shift 4
echo "# arguments: $#"
echo "All arguments: $@"

exit 0
