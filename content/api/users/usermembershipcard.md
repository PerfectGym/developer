---
title: User membership card
---

# User membership card

This API lest you assign membership card to a club user.

{:toc}


## Assign membership card to a club user ![alt text][EM]

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



[UserDetailsProperties]: /api/users/userdetails#properties

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"




## Block card ![alt text][EM]

    POST Users/Card/Block

Request blocks users card.


### Parameters

Name     	    				| Type    		| Description
--------------------------------|---------------|------------
`carNumber`     		        |`string`    	|  **Optional**. States which of users cards has to be blocked. If null, then the default card will be blocked.




### Response

[User details][UserDetailsProperties].


### Example request



``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 
	http://yoursubdomain.perfectgym.com/Api/Users/Card/Block
```


### Example response

<%= headers 200 %>
<%= json(:usertermsandconditions_response) %>



[UserDetailsProperties]: /api/users/userdetails#properties
[Contract]: /appendix/datatypes/contract

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"




## Unblock card ![alt text][EM]

    POST Users/Card/Unblock

Request will unblock the card.


### Parameters

Name     	    				| Type    		| Description
--------------------------------|---------------|------------
`carNumber`     		        |`string`    	|  **Optional**. States which of users' cards has to be unblocked. If null than the most recently blocked card will be unblocked.




### Response

[User details][UserDetailsProperties].


### Example request



``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 
	http://yoursubdomain.perfectgym.com/Api/Users/Card/Unblock
```


### Example response

<%= headers 200 %>
<%= json(:usermembershipcard_response) %>



[UserDetailsProperties]: /api/users/userdetails#properties
[Contract]: /appendix/datatypes/contract

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"