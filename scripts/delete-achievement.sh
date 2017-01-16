TOKEN="BAhJIiU4MmNhMmViM2VjNzI0NGRhMjg0YzYzN2U2ZmE5ZjQyYQY6BkVG--256b998d132d41f37f13485843a48338698653f1"
ID="4"
GOALID=" "


curl --include --request DELETE http://localhost:4741/goals/${GOALID}/achievements/${ID} \
  --header "Content-Type: application/json"\
  --header "Authorization: Token token=$TOKEN"
