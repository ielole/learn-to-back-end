TOKEN="BAhJIiUxOWRjMzFhYmQ5YWEzYzA5MGUyYWI1ZmM5YmUxOTNlMgY6BkVG--9ac6ed4068940a01da98c8d313d996330060710a"
ID="7"


curl --include --request DELETE http://localhost:4741/goals/${ID} \
  --header "Content-Type: application/json"\
  --header "Authorization: Token token=$TOKEN"
