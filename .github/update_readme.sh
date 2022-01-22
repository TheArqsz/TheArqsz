#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

place=`curl -s https://ctftime.org/team/88205 | grep "Country place" | head -n1 | awk -F'/stats/PL' '{ print $2 }' | cut -d'>' -f2 | cut -d'<' -f1`
now=`date`

sed "s#{{PLACE}}#$place#;s#{{NOW}}#$now#" $SCRIPT_DIR/readme-template.md