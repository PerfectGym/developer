---
title: User membership card
---

# User membership card

This API lets you assign membership card to a club user.

{:toc}

## <a name="properties"></a>Membership card properties

User membership card is described by the following properties

Name            				| Type      				| Description
--------------------------------|---------------------------|----------------------
`cardNumber`            		|`string`     				| Number of the card.
`timestamp`    					|`long`     				| Timestamp. Indicates when resource was last modified.
`isBlocked`     				|`bool`   					| Card is blocked.
`isDeleted`        				|`bool`   					| Card is deleted.
`cardType`						|`string`					| Type of the card: NormalCard, TemporaryCard.
`contractId`					|`long`						| The current contract identifier at the time of assigning the card.
`assigneReason`                 |`string`                   | The reason for assigning cards to the user. [List of reasons][AssaigneResons]

[AssaigneResons]: /api/users/usermembershipcard#assaignereasons

## <a name="assaignereasons"></a>Reasons for assigning a membership card
- NotSpecified
- ForgottenCard
- InactiveCard
- OneDayPass
- LockerKey
- GuestCard
- FriendCard
- OtherClub
- TemporaryCard
- BenefitCard
- TemporaryGuestCard
- FingerprintCard

## Get all membership user cards ![alt text][EM]

    GET Users/MembershipCards

Request all membership user cards.


### Parameters

Name  	    | Type     		| Description
------------|---------------|------------
`userId`    |`long`    		| **Required**. User identifier.


### Response

List of user [membership cards][MembershipCardProperties].


### Example request

In this example we want to get all cards of user with id = 777

``` command-line

curl -X GET
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	http://yoursubdomain.perfectgym.com/Api/Users/MembershipCards?userId=777
```

### Example response

<%= headers 200 %>
<%= json(:membershipcard_response) %>


[MembershipCardProperties]: /api/users/usermembershipcard#properties


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

In this example we assign new membership card to a user with `id` = `777`.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "cardNumber": "123456789"	    
	}' 
	http://yoursubdomain.perfectgym.com/Api/Users/MembershipCard?userId=777
```


### Example response

<%= headers 200 %>
<%= json(:usermembershipcard_response) %>



[UserDetailsProperties]: /api/users/userdetails#properties

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"


## Detach membership card from club user ![alt text][EM]

	POST Users/DetachMembershipCard
	
### Parameters

Name  	    | Type     		| Description
------------|---------------|------------
`userId`    |`long`    		| **Required**. User identifier. Request detach membership card to user identified by `userId`.


### Body parameters

Name     	    | Type       		| Description
----------------|-------------------|------------
`cardNumber` 	|`string`    		| Membership card number.

### Response

[User details][UserDetailsProperties].


### Example request

In this example we detach membership card number `123456789` from a user with `id` = `777`.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "cardNumber": "123456789"	    
	}' 
	http://yoursubdomain.perfectgym.com/Api/Users/MembershipCard?userId=777
```


### Example response

<%= headers 200 %>
<%= json(:usermembershipcard_response) %>


## Block card ![alt text][UM]

    PUT Users/Card/Block

Request blocks users card.


### Parameters

Name     	    				| Type    		| Description
--------------------------------|---------------|------------
`carNumber`     		        |`string`    	|  **Optional**. States which of users cards has to be blocked. If null, then the default card will be blocked.




### Response

[User details][UserDetailsProperties].


### Example request



``` command-line

curl -X PUT 
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




## Unblock card ![alt text][UM]

    PUT Users/Card/Unblock

Request will unblock the card.


### Parameters

Name     	    				| Type    		| Description
--------------------------------|---------------|------------
`carNumber`     		        |`string`    	|  **Optional**. States which of users' cards has to be unblocked. If null than the most recently blocked card will be unblocked.



 
### Response

[User details][UserDetailsProperties].


### Example request



``` command-line

curl -X PUT 
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