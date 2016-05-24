---
title: Message details
---

# Message details

Message details is detaild representation of single message directed to a user. 

{:toc}


## <a name="properties"></a>Message details properties

Message details holds the same data as [Message][MessageProperties] plus some detailed features of a message.
Only message details specyfic properties are described here.


Name         | Type     | Description
-------------|----------|----------------------
`text`	 	 |`string`  | Message text.
`status`     |`string`  | Message status. <br><strong>Possible values</strong>: <br><ul><li>Planned</li><li>InProgress</li><li>Done</li><li>Postponed</li><li>Failed</li></ul>
`read`    	 |`string`  | `true` if message has been read, `false` otherwise.
`comment`    |`string`  | Message comment.
`attachments`|`array`   | An array of [File][File] objects.
      
 

## Retrive detailed message information ![alt text][EM]

    GET Messages/Message

Returns detailed message informations.


### Parameters

Name            | Type       | Description
----------------|------------|------------------------
`messageId`     | `long`      | **Required**. Message identifier.



### Example request

In this example we fetch message with `id` = `10252` detailed information.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Messages/Message?messageId=10252     	
```


### Example response

<%= headers 200 %>
<%= json(:messagedetails_response) %>



[MessageProperties]: /api/messages/messages#properties 
[File]: /appendix/datatypes/file

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"