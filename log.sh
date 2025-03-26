#!/bin/bash

# ANSIエスケープコード（エメラルドグリーン）
GREEN="\e[38;5;m"
RESET="\e[0m"

log() {
    echo -e "${GREEN}yun |${RESET} $1"
}
