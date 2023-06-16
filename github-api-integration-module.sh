  # Author: Asim Sk
  # Version: v1
  #
  # Set your GitHub username and personal access token
  #
  # Please provide your github token and rest api to the script as input
  #
  ################################

USERNAME="Your Username"
TOKEN="token-Number"

# Set the repository and API endpoint
REPO="asimar007/CursorTracker"
API_URL="https://api.github.com/repos/$REPO"

# Make a GET request to retrieve repository information
get_repository_info() {
  curl -s -u "$USERNAME:$TOKEN" "$API_URL"
}

# Make a POST request to create a new issue
create_issue() {
  local title="$1"
  local body="$2"
  local payload="{\"title\":\"$title\",\"body\":\"$body\"}"
  curl -s -u "$USERNAME:$TOKEN" -X POST -d "$payload" "$API_URL/issues"
}

# Example usage
repo_info=$(get_repository_info)
echo "Repository information:"
echo "$repo_info"

create_issue "New Issue" "This is a sample issue created via the API."
