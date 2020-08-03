# Get changes in a branch
# Note: you must follow GitBranching
# Usage:
# $ PROJECT=[optional, default DEV19] git-get-changes <last-commit-hash>
# For example:
# $ git-get-changes d4655069

function git-get-changes(){
  LAST_COMMIT_HASH="$@"
  PROJECT=${PROJECT:-DEV19}
  git log  --oneline $LAST_COMMIT_HASH.. | awk -F"$PROJECT" 'NF!=0 {print $2}' | grep . | awk -F '-' '{ print $2 }' | sort  | uniq  | awk  '{ print "'$PROJECT'-"$0 }' |  tr '\n' ', ' | sed 's/.$//' | awk '{ print "key in ("$0 ")"}'
}
