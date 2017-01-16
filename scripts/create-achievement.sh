TOKEN="BAhJIiVhMmU3MDM4NTVhOGZmNmY1YzhhZWEzYzk5MTk2YTM5MgY6BkVG--b6e8189330f1979fa79be26ca91657389d2202bb"
GOALID="1"
API="http://localhost:4741"
URL_PATH="/goals/${GOALID}/achievements"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "achievement": {
      "goal_id": "1",
      "log": "This was my ducky cheering me on during project week.",
      "image": "http://imgur.com/hO7qC7x"
    }
  }'
