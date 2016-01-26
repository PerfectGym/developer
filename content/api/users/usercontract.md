---
title: User contract
---

# User contract

This API lest you assign contract to a club user.

{:toc}


## Assign contract to a club user

    POST Users/User/{userId}/Contract

Request assigns new contract to existing club user.


### Path parameters

Name  	    | Type       		| Description
------------|-------------------|------------
`userId`    |`string`    		| User identifier. Request assigns new contract to user identified by `userId`.


### Body parameters

Name     	    | Type       		| Description
----------------|-------------------|------------
`paymentPlanId` |`string`    		| Payment plan identifier. Request creates new contract based on payment plan identified by `paymentPlanId`
`startDate`     |`string`    		| Contract start date.
`signDate`     	|`string`    		| Contract sign date.



### Response

[User details][UserDetailsProperties] with [contract][Contract] detailed description.


### Example request

In this example we create new contract based on payment plan with id = `44` and we assigne it to user with id of value `236`.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "paymentPlanId": 44,
	    "startDate": "2016-01-26T00:00:00",
	    "signDate": "2016-01-26T00:00:00",	    
	}' 
	http://yoursubdomain.perfectgym.com/api/Users/User/236/Contract
```


### Example response

<%= headers 200 %>
<%= json(:usercontract_response) %>



[UserDetailsProperties]: /api/users/userdetails#properties
[Contract]: /appendix/datatypes/contract