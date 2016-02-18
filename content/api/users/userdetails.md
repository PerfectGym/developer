---
title: User details
---

# User details

User details is detaild representation of single user of your gym. 

{:toc}


## <a name="properties"></a>User details properties

User is described by the following properties

Name            				| Type      			| Description
--------------------------------|-----------------------|----------------------
`id`            				|`long`     			| Unique identifier of user.
`timestamp`    					|`long`     			| Timestamp. Indicates when resource was last modified.
`personalId`					|`string`				| User personal identifier.
`number`          				|`string`   			| User number.
`cardNumber`       				|`string`   			| User membership card number.
`firstName`     				|`string`   			| User first name.
`lastName`        				|`string`   			| User last name.
`email`          				|`string`   			| User email address.
`birthDate`         			|`string`   			| User birth date.
`isForeigner`					|`bool`					| Indicates if user is a forigner.
`sex`          					|`string`   			| User sex. <br><strong>Possible values</strong>: <br><ul><li>Male</li><li>Female</li></ul>
`phoneNumber`      				|`string`   			| User phone number.
`idCardName`					|`string`				| User identity card name.
`idCardNumber`  				|`string`				| User identity card number.
`newsletterAgreement`			|`bool`					| User identity card name.
`termsAndConditionsAgreement`  	|`bool`					| User identity card number.
`address`           			|[Address][Address]     | User address.
`isActive`     					|`bool`     			| Indicates if cuser is marked as active.
`isDeleted`     				|`bool`                 | Indicates if resource is deleted.
`currentContract`   			|[Contract][Contract]   | User's current contract.



## Retrive detailed information about user identified by user unique identifier.

    GET Users/User

Returns detailed user informations.


### Parameters

Name            | Type       | Description
----------------|------------|------------------------
`userId`        |`long`      | User's identifier.


### Example request

In this example we fetch user (with `id` = `1`) detailed information.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Users/User?userId=1
```


### Example response

<%= headers 200 %>
<%= json(:user_response) %>



## Retrive detailed information about user identified by personal id.

    GET Users/User

Returns detailed informations of user identified by personal id. User must be
uniquly identified, if more then one user with given personal id exists,
empty result is returned.


### Parameters

Name            | Type       | Description
----------------|------------|------------
`personalId`    |`string`    | User personal id.


### Example request

In this example we fetch user (with personal `id` = `80010101234`) detailed information.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Users/User?personalId=80010101234
```


### Example response

<%= headers 200 %>
<%= json(:user_response) %>



[Contract]: /appendix/datatypes/contract
[Address]: /appendix/datatypes/address
