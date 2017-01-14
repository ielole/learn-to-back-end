TOKEN="BAhJIiVjMmE5ODU4MjNmMGJiODA3OGYzYTgwZmU4ZWY2NmMyMgY6BkVG--12fa3cb905b8b0726346b6c354b0fc5172cc4df3"
ID="2"
API="http://localhost:4741"
URL_PATH="/goals/milestones/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "milestone": {
      "goal_id": "1",
      "title": "Go for Celebratory Drinks",
      "date": "2017-01-20 17:00:00",
      "location": "Boston Bar, Boston, MA, 02110",
      "image": "http://imgur.com/hO7qC7x"
    }
  }'
