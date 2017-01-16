TOKEN="BAhJIiVjMmE5ODU4MjNmMGJiODA3OGYzYTgwZmU4ZWY2NmMyMgY6BkVG--12fa3cb905b8b0726346b6c354b0fc5172cc4df3"
ID="1"
API="http://localhost:4741"
URL_PATH="/goals/achievements/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "achievement": {
      "goal_id": "3",
      "log": "The Apostles in Down Unda!",
      "image": "http://imgur.com/ZpcTjTD"
    }
  }'
