#! /usr/bin/bash
# Name: addmembers.sh
# AUthor: Michael Fahy
# Version: 1.1
# Date: 8/23/2020

read -r myusername< myGithubUsername
read -r mypat < myPersonalAccessToken
read -r myorg < myOrg
githubapi="http://api.github.com/orgs/$myorg"

while read -r line; do
   newmember="$line"
   command="curl -X PUT -u $myusername:$mypat $githubapi"
   command="$command""/memberships/$newmember"
   eval "$command"
done < newMembers
