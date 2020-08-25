#! /usr/bin/bash
# Name: addtoteam.sh
# AUthor: Michael Fahy
# Version: 1.2
# Date: 8/25/2020

read -r myusername< myGithubUsername
read -r mypat < myPersonalAccessToken
read -r myorg < myOrg
read -r myteam < myTeam
githubapi="https://api.github.com/orgs/$myorg"

while read -r line; do
   member="$line"
   command="curl -X PUT -u $myusername:$mypat $githubapi"
   command="$command""/teams/$myteam"
   command="$command""/memberships/$member"
   eval "$command"
done < myMembers
