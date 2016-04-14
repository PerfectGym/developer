---
title: Messages
---

# Message

Message is a summary representation of single message directed to a user.

{:toc}


## <a name="properties"></a>Message properties

Message is described by the following properties

Name            | Type      					| Description
----------------|-------------------------------|----------------------
`id`            |`long`     					| Unique resource identifier.
`timestamp`    	|`long`     					| Timestamp. Indicates when resource was last modified.
`title`	    	|`string`   					| Message title.
`isDeleted`     |`bool`                         | Indicates if resource is deleted.



## List user messages

    GET Messages/Messages

Returns paginated list of messages directed to a user.


### Parameters

Name         | Type   | Description
-------------|--------|--------------------
`userId`  	 |`long`  | **Required**. User identifier. Request returns messages assigned to user identified by `userId`.
`timestamp`	 |`long`  | Timestamp. Request returns messages with timestamp grater then `timestamp`. Defaults to 0.


### Example request

In this example we fetch list of messages assigned to user identified with `id` = `236`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Messages/Messages?userId=236
```


### Example response

<%= headers 200 %>
<%= json(:messages_response) %>
