#! /usr/bin/bash
# Name: addmembers.sh
# AUthor: Michael Fahy
# Version: 1.0
# Date: 8/22/2020

while read -r line; do
   myusername="$line"
done < myGithubUsername

while read -r line; do
   mypat="$line"
done < myPersonalAccessToken

while read -r line; do
   myorg="$line"
done < myOrg

githubapi="http://api.github.com/orgs/$myorg"

while read -r line; do
   newmember="$line"
   command="curl -X PUT -u $myusername:$mypat $githubapi"
   command="$command""/memberships/$newmember"
   echo "$command"
done < newMembers

