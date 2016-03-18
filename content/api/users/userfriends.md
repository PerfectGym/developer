---
title: User friends
---

# User friends

This API lest you assign a friend to a full member user account.

{:toc}


## Overview


## Verify connection possibility

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
	http://yoursubdomain.perfectgym.com/api/Users/VerifyFriendConnection?fullMemberUserId=236&friendUserId=521
```


<!-- ### Example response

<%= headers 200 %>
<%= json(:user_response) %>


 -->



## Execute connection

    GET Users/ConnectFriend

Request assigns friend to a full club member.


### Parameters

Name  	    		| Type     		| Description
--------------------|---------------|------------
`fullMemberUserId`  |`long`    		| **Required**. Full member user identifier. Request assignes user identified with `friendUserId` as a friend of club member identified with `fullMemberUserId`.
`friendUserId`  	|`long`    		| **Required**. Friend user identifier. Request assignes user identified with `friendUserId` as a friend of club member identified with `fullMemberUserId`.



### Response

[User details][UserDetailsProperties] including user friends list.


### Example request

In this example user with `id` = `521` as friend of user with `id` = `236`.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 	  
	http://yoursubdomain.perfectgym.com/api/Users/ConnectFriend?fullMemberUserId=236&friendUserId=521
```



[UserDetailsProperties]: /api/users/userdetails#properties
