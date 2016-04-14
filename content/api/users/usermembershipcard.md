---
title: User membership card
---

# User membership card

This API lest you assign membership card to a club user.

{:toc}


## Assign membership card to a club user

    POST Users/MembershipCard

Request assigns membership card to a club user.


### Parameters

Name  	    | Type     		| Description
------------|---------------|------------
`userId`    |`long`    		| **Required**. User identifier. Request assigns membership card to user identified by `userId`.


### Body parameters

Name     	    | Type       		| Description
----------------|-------------------|------------
`cardNumber` 	|`string`    		| Membership card number.



### Response

[User details][UserDetailsProperties].


### Example request

In this example we assign new membership card to a user with `id` = `236`.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "cardNumber": "123456789"	    
	}' 
	http://yoursubdomain.perfectgym.com/Api/Users/MembershipCard?userId=236
```


### Example response

<%= headers 200 %>
<%= json(:usermembershipcard_response) %>



[UserDetailsProperties]: /Api/users/userdetails#properties
