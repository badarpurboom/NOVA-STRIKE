$ErrorActionPreference = "Stop"

$repo = (Get-Location).Path

# Git "dubious ownership" workaround: point global config to a writable HOME.
$env:HOME = $repo
$env:USERPROFILE = $repo
$env:GIT_TERMINAL_PROMPT = "0"

Push-Location C:\
git config --global --add safe.directory "$repo"
git config --global user.name "badarpurboom"
git config --global user.email "badarpurboom@gmail.com"
Pop-Location

git push -u origin main
