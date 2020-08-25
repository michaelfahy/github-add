#! /usr/bin/bash
# Name: addmembers.sh
# AUthor: Michael Fahy
# Version: 1.2
# Date: 8/25/2020

read -r myusername< myGithubUsername
read -r mypat < myPersonalAccessToken
read -r myorg < myOrg
githubapi="https://api.github.com/orgs/$myorg"

while read -r line; do
   newmember="$line"
   command="curl -X PUT -u $myusername:$mypat $githubapi"
   command="$command""/memberships/$newmember"
   echo "$command"
   eval "$command"
done < newMembers
