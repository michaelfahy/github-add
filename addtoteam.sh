#! /usr/bin/bash
# Name: addtoteam.sh
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

while read -r line; do
   myteam="$line"
done < myTeam

githubapi="http://api.github.com/orgs/$myorg"

while read -r line; do
   member="$line"
   command="curl -X PUT -u $myusername:$mypat $githubapi"
   command="$command""/teams/$myteam"
   command="$command""/memberships/$member"
   echo "$command"
done < myMembers

