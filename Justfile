default:
  @just --list

build:
    #!/usr/bin/env sh
    echo "Select what to build:"
    choice=$(gum choose "main" "hypr" "all")
    case $choice in
        "main")
            just _build-main
            ;;
        "hypr")
            just _build-hypr
            ;;
        "all")
            just _build-all
            ;;
        *)
            echo "Build cancelled or invalid choice."
            exit 1
            ;;
    esac

prefetch:
    @echo "Pre-fetching base image"
    docker pull ghcr.io/ublue-os/bluefin-dx-nvidia:stable-daily

# Helper recipe for the main build
_build-main: prefetch
    @echo "Building main recipe..."
    @bluebuild build ./recipes/recipe.yml

# Helper recipe for the hypr build
_build-hypr: prefetch
    @echo "Building hypr recipe..."
    @bluebuild build ./recipes/recipe-hypr.yml

# Helper recipe to build both
_build-all: prefetch
    @echo "Building both recipes..."
    @just _build-main
    @just _build-hypr

generate-main:
    bluebuild generate ./recipes/recipe.yml -o Containerfile