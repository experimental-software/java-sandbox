#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${SCRIPT_DIR}

TITLE=$(head -n 1 README.md | sed 's/# \(.*\)/\1/')
SRC=$(find . -type f -name "*.java")

gh gist create $SRC ./README.md ./build.gradle ./lombok.config -d "${TITLE}" --web

git add .
git stash
