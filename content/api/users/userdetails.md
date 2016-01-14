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
`number`          	|`string`   			| User number.
`firstName`     	|`string`   			| User first name.
`lastName`        	|`string`   			| User last name.
`email`          	|`string`   			| User email address.
`birthDate`         |`string`   			| User birth date.
`sex`          		|`string`   			| User sex. <br><strong>Possible values</strong>: <br><ul><li>Male</li><li>Female</li></ul>
`phoneNumber`      	|`string`   			| user phone number.
`address`           |[Address][Address]     | User address.
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

    GET Userss/User

Returns detailed informations of user identified by phone number or e-mail address. User must be
uniquly identified by one of a parameters. If more then one user with given e-mail or phone number exists,
empty result is returned.


### Query string parameters

Name            | Type       | Description
-----|----------|------------|------------
`emailAddress`  |`string`    | Optional. User's e-mail address.
`phoneNumber`   |`string`    | Optional. User's phone number.


### Example request

In this example we fetch user (with phone number = `0048123456789`) detailed information.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Users/User?phoneNumber=0048123456789
```


### Example response

<%= headers 200 %>
<%= json(:user_response) %>



[Contract]: /appendix/datatypes/contract
[Address]: /appendix/datatypes/address
