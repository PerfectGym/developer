---
title: User details
---

# User details

User details is detaild representation of single user of your gym. 


## <a name="properties"></a>User details properties

User is described by the following properties

Name            	| Type      | Description
-----|--------------|----------------------
`id`            	|`long`     			| Unique identifier of user.
`timestamp`     	|`long`     			| Timestamp of user. Indicates when user was last modified.
`number`          	|`string`   			| User's number.
`firstName`     	|`string`   			| User's first name.
`lastName`        	|`string`   			| User's last name.
`email`          	|`string`   			| User's email address.
`birthDate`         |`string`   			| User's birth date.
`sex`          		|`string`   			| User's sex. <br><strong>Possible values</strong>: <br><ul><li>Male</li><li>Female</li></ul>
`phoneNumber`      	|`string`   			| user's phone number.
`country`          	|`string`   			| User's country name.
`city`          	|`string`   			| User's city name.
`postalCode`        |`string`   			| User's zip code or equivalent..
`street`          	|`string`   			| User's street name.
`isActive`     		|`bool`     			| Indicates if cuser is marked as active.
`isDeleted`     	|`bool`     			| Indicates if user was deleted from your user's list.
`currentContract`   |[Contract][Contract]   | User's current contract.



## Retrive detailed information about user identified by user unique identifier.

    GET Userss/User/{userId}

Returns detailed user informations.


### Path parameters

Name            | Type       | Description
-----|----------|------------|------------
`userId`        |`long`      | User's identifier.


### Example request

In this example we fetch user (with id = `1`) detailed information.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Users/User/1
```


### Example response

<%= headers 200 %>
<%= json(:user_response) %>



## Retrive detailed information about user identified by phone number or e-mail address.

    GET Userss/User/{userAttribute}

Returns detailed informations of user identified by phone number or e-mail address. User must be
uniquly identified by `userAttribute` parameter. If more then one user with given `userAttribute` exists,
empty result is returned.

`userAttribute` must be URL encoded.


### Path parameters

Name            | Type       | Description
-----|----------|------------|------------
`userAtribute`  |`string`    | User's phone number or e-mail address.


### Example request

In this example we fetch user (with phone number = `0048123456789`) detailed information.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Users/User/'0048123456789'/
```


### Example response

<%= headers 200 %>
<%= json(:user_response) %>



[Contract]: /appendix/contract
