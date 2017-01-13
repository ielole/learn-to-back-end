TOKEN="BAhJIiVjMmE5ODU4MjNmMGJiODA3OGYzYTgwZmU4ZWY2NmMyMgY6BkVG--12fa3cb905b8b0726346b6c354b0fc5172cc4df3"
ID="2"


curl --include --request DELETE http://localhost:4741/goals/daily_achievements/${ID} \
  --header "Content-Type: application/json"\
  --header "Authorization: Token token=$TOKEN"
