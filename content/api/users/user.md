---
title: Users
---

# Users

User is a summary representation of single club member in your gym.
 

{:toc}


## <a name="properties"></a>User properties

User is described by the following properties

Name            				| Type      				| Description
--------------------------------|---------------------------|----------------------
`id`            				|`long`     				| Unique identifier of user.
`timestamp`    					|`long`     				| Timestamp. Indicates when resource was last modified.
`firstName`     				|`string`   				| User first name.
`lastName`        				|`string`   				| User last name.
`photoUrl`						|`string`					| User photo URL.
`coverPhotoUrl`					|`string`					| Cover photo URL.
`presentInClub`                 |`bool`                     | `true` if user is currently present in club, `false` otherwise.
`sex`          					|`string`   				| User sex. <br><strong>Possible values</strong>: <br><ul><li>Male</li><li>Female</li></ul>
`isDeleted`     				|`bool`                 	| Indicates if resource is deleted.


## Get users list ![alt text][EM]

    Get Users/Users

Returns paginated list of users.


### Parameters

Name  	    | Type     		| Description
------------|---------------|------------
`clubId`    |`long`    		| Club identifier.
`created`   |`long`    		| Filter results by user created date.
`updated`   |`long`    		| Filter results by user last modified date.
`paige`     |`long`    		| Result paige - defaults to `1`.
 

### Example request

In this example we get all users from club with id `21` .

``` command-line

curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Users/Users?clubId=21
```


### Example response

<%= headers 200 %>
<%= json(:userlist_response) %>


[EM]: /assets/images/employee.png "Employee mode"



