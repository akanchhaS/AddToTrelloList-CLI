# AddToTrelloList-CLI
Add cards to trello list use command line


Introduction: Trello is an oraganizing tool, which helps in tracking and managing different tasks. This small project is build with the idea of adding cards to Trello list from command line.

API(s) used: a. Trello API

Steps:

1. Get the Trello API Key and Token from here: (https://trello.com/app-key)
2. Get the list ID which you want to populate. To get the List ID, go to the board in which the list is present, copy the link address and append it with json. Example: https://trello.com/b/yxxxxxx7/task-tracker --> https://trello.com/b/yxxxxxx7/task-tracker.json
3. Now from the received json output, seach for the name of the List and find the id associated with it. This would be a 24 digit alphanumeric id.
4. Replace the values obtained in the above steps in the script.
5. The curl will send a POST request to Trello API, throw away teh entire JSON output and just print response code.
