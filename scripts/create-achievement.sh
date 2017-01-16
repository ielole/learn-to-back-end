TOKEN="BAhJIiU4MmNhMmViM2VjNzI0NGRhMjg0YzYzN2U2ZmE5ZjQyYQY6BkVG--256b998d132d41f37f13485843a48338698653f1"
ID="27"
API="http://localhost:4741"
URL_PATH="/goals/${ID}/achievements"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "achievement": {
      "goal_id": "27",
      "log": "This was my ducky cheering me on during project week.",
      "image": "http://imgur.com/hO7qC7x"
    }
  }'
