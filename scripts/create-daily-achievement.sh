TOKEN="BAhJIiVjMmE5ODU4MjNmMGJiODA3OGYzYTgwZmU4ZWY2NmMyMgY6BkVG--12fa3cb905b8b0726346b6c354b0fc5172cc4df3"

API="http://localhost:4741"
URL_PATH="/goals/daily_achievements"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "daily_achievement": {
      "goal_id": "1",
      "log": "This was my ducky cheering me on during project week.",
      "image": "http://imgur.com/hO7qC7x"
    }
  }'
