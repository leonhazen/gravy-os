default:
  @just --list

build:
    bluebuild build ./recipes/recipe.yml

build-hypr:
    bluebuild build ./recipes/recipe-hypr.yml

generate:
    bluebuild generate ./recipes/recipe.yml -o Containerfile