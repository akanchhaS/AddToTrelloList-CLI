#!/bin/bash

# replace spaces in name with + (or else http call will fail)
name=$1

#Replace space with + so that it doesnt break the API call
safe_name=$(echo $name|tr ' ' '+')

##Store all identifiers in variables
listID=<YOUR_LIST_ID>
token=<TRELLO_TOKEN>
key=<TRELLO_KEY>

#populate the query string that you need to send with the API so that your List, and account (using key and token) is uniquely identfied
data="name="$safe_name"&due=null&idList="$listID"&token="$token"&key="$key

# The following curl will throw away response json, and display just status code (200)

curl -s -o /dev/null -w "%{http_code}\\n" --data $data https://api.trello.com/1/cards