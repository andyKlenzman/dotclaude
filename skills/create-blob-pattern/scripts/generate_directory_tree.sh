#!/bin/bash
# generate_directory_tree.sh
REPO_PATH=$1
tree -L 2 -a "$REPO_PATH"