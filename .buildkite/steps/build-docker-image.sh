#!/bin/bash
set -euo pipefail

build_docker_image() {
    local image_tag="$1"
    echo "--- Building :docker:"
    
    docker build
}

build_docker_image
