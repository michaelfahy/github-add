# github-add

This repository contains a couple of bash scripts that use the GitHub REST API to
* batch add members to a GitHub organization
* batch add members of a GitHub organization to a team

To use these scripts you will need to create a GitHub Personal Access Token,
which you can do by following the directions at
https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token

addmembers.sh is a bash script to add members to a GitHub organization

To use it, edit the files:
* myGithubUsername - to contain your GitHub Username
* myPeronalAccessToken - to contain your GitHub Personal Access Token
* myOrg - to contain the name of the GitHub organization to which you will add members
* newMembers - to contain a list of the GitHub usernames that you will add to the organization

addtoteam.sh is a bash script to add members to a team in a GitHub organization

To use it, edit the files:
* myGithubUsername - to contain your GitHub username
* myPeronalAccessToken - to contain your GitHub Personal Access Token
* myOrg - to contain the name of the GitHub organization
* myTeam - to contain the name of the team to which you will add members
* myMembers - to contain a list of the org members that you will add to the team
