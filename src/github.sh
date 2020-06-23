#!/usr/bin/env bash

GITHUB_API_URI="https://api.github.com"
GITHUB_API_HEADER="Accept: application/vnd.github.v3+json"

github::get_commit_modified_files() {
  local -r commit_ref=$1

  curl -sSL -H "Authorization: token $GITHUB_TOKEN" -H "$GITHUB_API_HEADER" "$GITHUB_API_URI/repos/$GITHUB_REPOSITORY/commits/$commit_ref" | jq .files | jq -r ".[] | .filename"
#  local -r last_commit=$(curl -sSL -H "Authorization: token $GITHUB_TOKEN" -H "$GITHUB_API_HEADER" "$GITHUB_API_URI/repos/$GITHUB_REPOSITORY/pulls/$pr_number/commits" | jq .files | jq -r ".[] | .filename")
}

github::comment_pr() {
  local -r comment=$2
  local -r pr_number=$1

  curl -sSL \
    -H "Authorization: token $GITHUB_TOKEN" \
    -H "$GITHUB_API_HEADER" \
    -X POST \
    -H "Content-Type: application/json" \
    -d "{\"body\":\"$comment\"}" \
    "$GITHUB_API_URI/repos/$GITHUB_REPOSITORY/issues/$pr_number/comments"
}

github::comment_commit() {
  local -r comment=$2
  local -r commit_sha=$1

  curl -sSL \
    -H "Authorization: token $GITHUB_TOKEN" \
    -H "$GITHUB_API_HEADER" \
    -X POST \
    -H "Content-Type: application/json" \
    -d "{\"body\":\"$comment\"}" \
    "$GITHUB_API_URI/repos/$GITHUB_REPOSITORY/commits/$commit_sha/comments"
}
