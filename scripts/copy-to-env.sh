#!/bin/ash
github_changelog_generator $@

# If CHANGELOG.md exits, copy it to an env var
if [[ -e 'CHANGELOG.md' ]]; then
  export CHANGELOG=$(cat CHANGELOG.md)
fi

echo $CHANGELOG
echo ::set-output name=changelog::${CHANGELOG}
