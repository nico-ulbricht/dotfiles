#/!usr/bin/env bash
pmset -g batt | grep -oE "\d{2,3}%"
