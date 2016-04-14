---
title: Contract freezing
---

# Contract freezing

This API lest you freeze user contract.

{:toc}


## Execute contract freeze

    POST Contracts/Freeze

Request freezes user contract.


### Parameters

Name  	 	    | Type   	| Description
----------------|-----------|------------
`contractId`    |`long`     | **Required**. Identifier of a contract to be frozen.


### Body parameters

Name     	    | Type     		| Description
----------------|---------------|------------
`freezeTypeId` 	|`long`    		| Freeze type to be applied identifier.
`reasonId` 		|`long`    		| Freeze reason identifier.
`startDate` 	|`string`  		| Requested freeze start date.
`endDate` 		|`string`  		| Requested freeze end date.



### Response

[Contract details][ContractDetails] if freeze is successful, or collection of [errors][Error] with [freeze error codes][FreezeContractErrorCode] otherwise.


### Example request

In this example we freeze contract with `id` = `10358` using freeze type with `id` = `7`. Contract will be suspended from 2016-04-01 till 2016-04-07

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	     	"freezeTypeId":7,
    	 	"reasonId": 1,
    		"startDate": "2016-04-01T00:00:00",
    		"endDate": "2016-04-07T00:00:00"	    
	}' 
	http://yoursubdomain.perfectgym.com/Api/Contracts/Freeze?contractId=10358
```


### Example response

<%= headers 200 %>
<%= json(:contract_freeze_response) %>


### Example error response

Freeze time range greater then freeze type `maximumInterval` generates following error:

<%= headers 400 %>
<%= json(:contract_error_response) %>


[ContractDetails]: /api/contracts/contractdetails#properties
[Error]: /appendix/datatypes/error
[FreezeContractErrorCode]: /appendix/errorcodes/freezecontracterrorcode