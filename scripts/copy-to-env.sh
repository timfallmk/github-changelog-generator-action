#!/bin/ash
github_changelog_generator $@

# If CHANGELOG.md exits, copy it to an env var
if [[ -e 'CHANGELOG.md' ]]; then
  export CHANGELOG="$(cat CHANGELOG.md | sed ':a;N;$!ba;s/%/%25/g' | sed ':a;N;$!ba;s/\n/%0A/g' | sed ':a;N;$!ba;s/\r/%0D/g')"
fi

echo "$CHANGELOG"
echo ::set-output name=changelog::"${CHANGELOG}"
