TOKEN="BAhJIiVjMmE5ODU4MjNmMGJiODA3OGYzYTgwZmU4ZWY2NmMyMgY6BkVG--12fa3cb905b8b0726346b6c354b0fc5172cc4df3"

API="http://localhost:4741"
URL_PATH="/goals/milestones"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "milestone": {
      "goal_id": "1",
      "title": "Rock the Meet and Hire",
      "date": "2017-02-02 16:59:00",
      "location": "General Assembly, 125 Summer St, Floor 13, Boston, MA, 02110",
      "image": "http://imgur.com/hO7qC7x"
    }
  }'
