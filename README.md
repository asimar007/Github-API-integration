
# Github API integration

Script is a shell script that demonstrates how to integrate with the GitHub API using the curl command-line tool. Here's a breakdown of the script:

- The script starts with a shebang #!/bin/bash, which indicates that it should be executed using the Bash shell.

- It defines two variables USERNAME and TOKEN to store your GitHub username and personal access token. You need to replace these placeholders with your actual GitHub credentials.

- The script sets the repository owner and name by assigning values to the OWNER and REPO_NAME variables. You should update these variables with the respective owner and name of the repository you want to interact with on GitHub.

- The API_URL variable is constructed by combining the API endpoint format (https://api.github.com/repos/) with the owner and repository name variables. This forms the full URL for making API requests to the specific repository.

- The get_repository_info function is defined to make a GET request to the GitHub API endpoint using curl. It includes the -u option to provide the authentication credentials (username and token) and the -s option to suppress the progress meter and other unnecessary output. The response from the API call is stored in the repo_info variable.

- The create_issue function is defined to make a POST request to create a new issue in the repository. It takes two parameters: title and body, which specify the title and body content of the issue to be created. The function constructs a JSON payload with the provided title and body, and then sends the POST request to the GitHub API endpoint.

- Lastly, the script demonstrates an example usage by calling the get_repository_info function and storing the response in the repo_info variable. It then prints the repository information to the console. After that, it calls the create_issue function with sample title and body content to create a new issue in the repository.

Remember to replace the placeholder values (your_username, your_personal_access_token, repository_owner, and repository_name) with your actual GitHub credentials and repository details before executing the script.


## Authors

- [Asim Sk](https://www.github.com/asimar007)


## Run Locally

Clone the project

```bash
  git clone https://github.com/asimar007/Github-API-integration
```

Go to the project directory

```bash
  cd Github-API-integration
```

Run

```bash
  ./github-api-integration-module.sh
```
