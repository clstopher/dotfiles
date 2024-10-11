#!/bin/sh

PWD=`pwd`
LOCAL="$1"
REMOTE="$2"

case "$LOCAL"
in
  /*)
    L="$LOCAL"
    ;;
  *)
    L="$PWD/$LOCAL"
    ;;
esac

case "$REMOTE"
in
  /*)
    R="$REMOTE"
    ;;
  *)
    R="$PWD/$REMOTE"
    ;;
esac

if [ "$#" -eq 2 ]
then
  open -W -a p4merge --args "$L" "$R"
else
  BASE="$3"
  case "$BASE"
  in
    /*)
      B="$BASE"
      ;;
    *)
      B="$PWD/$BASE"
      ;;
  esac
  MERGED="$4"
  case "$MERGED"
  in
    /*)
      M="$MERGED"
      ;;
    *)
      M="$PWD/$MERGED"
      ;;
  esac
  echo \"$B\" \"$L\" \"$R\" \"$M\"
  open -W -a p4merge --args "$B" "$L" "$R" "$M"
fi
