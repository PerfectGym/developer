---
title: User documents
---

# User documents

Document is a summary representation of single user document stored in Perfect Gym.

{:toc}


## <a name="properties"></a>Document properties

Document is described by the following properties

Name            | Type      					| Description
----------------|-------------------------------|----------------------
`id`            |`long`     					| Unique identifier of document.
`timestamp`    	|`long`     					| Timestamp. Indicates when resource was last modified.
`name`	    	|`string`   					| Document file name.
`extension`    	|`string`   					| File extension.
`type`	    	|`string`   					| Document type. <br><strong>Possible values</strong>: <br><ul><li>Invoice</li><li>ContractAgreement</li></ul>
`size`		    |`long`		   					| File size in bytes.
`url`		   	|`string`   					| Document url.
`isDeleted`     |`bool`                         | Indicates if resource is deleted.



## List user documents ![alt text][EM]

    GET Documents/Documents

Returns paginated list of user documents.


### Parameters

Name         | Type   | Description
-------------|--------|--------------------
`userId`  	 |`long`  | **Required**. User identifier. Request returns documents assigned to user identified by `userId`.
`timestamp`	 |`long`  | Timestamp. Request returns user documents with timestamp grater then `timestamp`, defaults to 0.


### Example request

In this example we fetch list of documents assigned to user identified with `id` = `236`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Documents/Documents?userId=236
```


### Example response

<%= headers 200 %>
<%= json(:documents_response) %>

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"
