---
title: User contract
---

# User contract

This API lest you assign contract to a club user.

{:toc}


## Assign contract to a club user

    POST Users/Contract

Request assigns new contract to existing club user.


### Parameters

Name  	    | Type       		| Description
------------|-------------------|------------
`userId`    |`string`    		| **Required**. User identifier. Request assigns new contract to user identified by `userId`.


### Body parameters

Name     	    | Type       		| Description
----------------|-------------------|------------
`paymentPlanId` |`string`    		| Payment plan identifier. Request creates new contract based on payment plan identified by `paymentPlanId`
`startDate`     |`string`    		| Contract start date.
`signDate`     	|`string`    		| Contract sign date.
`discountIds`   |`array`			| Array of discount identifiers to be applied to contract.



### Response

[User details][UserDetailsProperties] with [contract][Contract] detailed description.


### Example request

In this example we create new contract based on payment plan with `id` = `44` and we assigne it to user with `id` of value `236`.
Also discount with `id` = `10` is applied.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "paymentPlanId": 44,
	    "startDate": "2016-01-26T00:00:00",
	    "signDate": "2016-01-26T00:00:00",
	    "discountIds": [10]	    
	}' 
	http://yoursubdomain.perfectgym.com/api/Users/Contract?userId=236
```


### Example response

<%= headers 200 %>
<%= json(:usercontract_response) %>



[UserDetailsProperties]: /api/users/userdetails#properties
[Contract]: /appendix/datatypes/contract
