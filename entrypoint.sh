json=$(python3 /app/check_group_validity.py "$1" "$2" "$3" "$4" "$5" "$6")
echo "Helloooooooooooooooooooooooooo"
echo $json

json="${json//'%'/'%25'}"
json="${json//$'\n'/'%0A'}"
json="${json//$'\r'/'%0D'}"

echo $json | jq -r ".student_submission" | echo
echo $json | jq ".student_submission" | echo
echo $json | jq ".report" | echo

echo {"ett":"1a", "two":"2nd"} | jq "."
echo {"ett":"1a", "two":"2nd"} | jq "." | echo

if [[ $(echo $json | jq -r '.student_submission' | echo) == "true" ]]; then echo "sant"; exit 1; else echo "falskt"; fi

