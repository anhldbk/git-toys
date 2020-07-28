
function git-init(){
  git init
  echo "Initializing with readme.md..."
  touch readme.md
  git add --all .
  git commit -m 'First commit'

  PRE_COMMIT_FILE=".pre-commit-config.yaml"
  if [ ! -f "$PRE_COMMIT_FILE" ]; then
    echo "Configuring pre-commit with default configuration..."
    PRE_COMMIT_DEFAULT_CONFIG=`cat << "EOF"
# See https://pre-commit.com for more information
# See https://pre-commit.com/hooks.html for more hooks
repos: []
    `
    echo "$PRE_COMMIT_DEFAULT_CONFIG" > $PRE_COMMIT_FILE
  fi


  # Remeber to install pre-commit first
  # > brew install pre-commit
  pre-commit install
  .git/hooks/pre-commit 


  HOOK_FILE=".git/hooks/prepare-commit-msg"
  echo "Injecting hook script..."
  HOOK_SCRIPT=`cat << "EOF"
#!/bin/bash
FILE=$1
MESSAGE=$(cat $FILE)
TICKET=$(git rev-parse --abbrev-ref HEAD | grep -Eo '^(\w+/)?(\w+[-_])?[0-9]+' | grep -Eo '(\w+[-])?[0-9]+' | tr "[:lower:]" "[:upper:]")
if [[ $TICKET == "[]" || "$MESSAGE" == "$TICKET"* ]];then
  exit 0;
fi

echo "$TICKET: $MESSAGE" > $FILE
  `
  echo "$HOOK_SCRIPT" > $HOOK_FILE
  chmod +x $HOOK_FILE

  echo "Done!"
}
alias git-init=git-init
