---
title: Contracts
---

# Contracts

Contract is a summary representation of single user contract.

{:toc}


## <a name="properties"></a>Contract properties

Contract is described by the following properties

Name            | Type      					| Description
----------------|-------------------------------|----------------------
`id`            |`long`     					| Unique identifier of contract.
`timestamp`    	|`long`     					| Timestamp. Indicates when resource was last modified.
`signDate`    	|`string`   					| Contract's sign date.
`startDate`    	|`string`   					| Contract's start date.
`cancelDate`    |`string`   					| Contract's cancel date.
`endDate`   	|`string`   					| Contract's end date.
`isActive`     	|`bool`     					| Indicates if contract is marked as active.
`isDeleted`     |`bool`                         | Indicates if resource is deleted.



## List user contracts 

    GET Contracts/Contracts

Returns paginated list of user contracts.


### Parameters

Name         | Type   | Description
-------------|--------|--------------------
`userId`  	 |`long`  | **Required**. User identifier. Request returns contracts assigned to user identified by `userId`.


### Example request

In this example we fetch list of contracts assigned to user identified with `id` = `236`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Contracts/Contracts?userId=236
```


### Example response

<%= headers 200 %>
<%= json(:contracts_response) %>
