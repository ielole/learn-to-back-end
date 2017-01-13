TOKEN="BAhJIiVjMmE5ODU4MjNmMGJiODA3OGYzYTgwZmU4ZWY2NmMyMgY6BkVG--12fa3cb905b8b0726346b6c354b0fc5172cc4df3"
ID="1"
API="http://localhost:4741"
URL_PATH="/goals"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "goal": {
      "title": "Become a marathon runner",
      "start_date": "2017-01-11 00:00:00",
      "end_date": "2018-01-11 00:00:00"
    }
  }'

echo
