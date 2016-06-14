---
title: User friends
---

# User friends

This API lets you assign a friend to a full member user account.

{:toc}


## Overview


## Verify connection possibility ![alt text][EM]

    GET Users/VerifyFriendConnection

Request checks if two users can be connected as friends in Perfect Gym system. 


### Parameters

Name  	    		| Type     		| Description
--------------------|---------------|------------
`fullMemberUserId`  |`long`    		| **Required**. Full member user identifier. Request checks if user identified with `friendUserId` can be assigned as friend to user identified by `fullMemberUserId`.
`friendUserId`  	|`long`    		| **Required**. Friend user identifier. Request checks if user identified with `friendUserId` can be assigned as friend to user identified by `fullMemberUserId`.



### Response

[User details][UserDetailsProperties] including user friends list.


### Example request

In this example we check if user with `id` = `521` can be assigned as friend of user with `id` = `236`.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 	  
	http://yoursubdomain.perfectgym.com/Api/Users/VerifyFriendConnection?fullMemberUserId=236&friendUserId=521
```


<!-- ### Example response

<%= headers 200 %>
<%= json(:user_response) %>


 -->



## Execute connection ![alt text][EM]

    GET Users/ConnectFriend

Request assigns friend to a full club member.


### Parameters

Name  	    		| Type     		| Description
--------------------|---------------|------------
`fullMemberUserId`  |`long`    		| **Required**. Full member user identifier. Request assignes user identified with `friendUserId` as a friend of club member identified with `fullMemberUserId`.
`friendUserId`  	|`long`    		| **Required**. Friend user identifier. Request assignes user identified with `friendUserId` as a friend of club member identified with `fullMemberUserId`.
`dateFrom`  	    |`dateTime`    	| **Required**. Start relationship between the user and friends
`dateUntil`  	    |`dateTime`    	|               End relationship between the user and friends


### Response

[User details][UserDetailsProperties] including user friends list.


### Example request

In this example user with `id` = `521` as friend of user with `id` = `236`.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 	  
	http://yoursubdomain.perfectgym.com/Api/Users/ConnectFriend?fullMemberUserId=236&friendUserId=521
```

## Get friend status 

    GET Users/FriendStatus

Get information on the relationship between the user and friends in time

### Parameters

Name  	    | Type     		| Description
------------|---------------|------------
`userId`    |`long`    		| **Required**. User identifier.

 

### Response

[Friends status][UserFriendStatus].


### Example request

In this example we get information about user friends with `id` = `236`.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 
	http://yoursubdomain.perfectgym.com/Api/Users/FriendStatus?userId=236
```

Example response

<%= headers 200 %>
<%= json(:userfriend_response) %>



[UserDetailsProperties]: /api/users/userdetails#properties
[UserFriendStatus]:  /appendix/datatypes/friendstatus

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"