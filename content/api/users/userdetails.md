---
title: User details
---

# User details

User details is detaild representation of single user of your gym. 

{:toc}


## <a name="properties"></a>User details properties

User is described by the following properties

Name            				| Type      				| Description
--------------------------------|---------------------------|----------------------
`id`            				|`long`     				| Unique identifier of user.
`timestamp`    					|`long`     				| Timestamp. Indicates when resource was last modified.
`personalId`					|`string`					| User personal identifier.
`number`          				|`string`   				| User number.
`cardNumber`       				|`string`   				| User membership card number.
`firstName`     				|`string`   				| User first name.
`lastName`        				|`string`   				| User last name.
`email`          				|`string`   				| User email address.
`photoUrl`						|`string`					| User photo URL.
`birthDate`         			|`string`   				| User birth date.
`isForeigner`					|`bool`						| Indicates if user is a forigner.
`hasAccount`					|`bool`						| Indicates if user has signed up for end user account.
`sex`          					|`string`   				| User sex. <br><strong>Possible values</strong>: <br><ul><li>Male</li><li>Female</li></ul>
`phoneNumber`      				|`string`   				| User phone number.
`idCardName`					|`string`					| User identity card name.
`idCardNumber`  				|`string`					| User identity card number.
`legalGuardian`  				|`string`					| User legal guardian full name.
`photoUrl`		  				|`string`					| User photo url.
`newsletterAgreement`			|`bool`						| User identity card name.
`termsAndConditionsAgreement`  	|`bool`						| User identity card number.
`address`           			|[Address][Address]     	| User address.
`contracts`   					|`array`   					| An array of [Contract][Contract] objects, each representing user's contract.
`directDebit`					|[DirectDebit][DirectDebit]	| User direct debit information.
`homeClubId`					|`long`						| User home club identifier.
`isActive`     					|`bool`     				| Indicates if cuser is marked as active.
`isDeleted`     				|`bool`                 	| Indicates if resource is deleted.




## Retrive detailed information about user identified by user unique identifier ![alt text][EM]

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
     http://yoursubdomain.perfectgym.com/Api/Users/User?userId=1
```


### Example response

<%= headers 200 %>
<%= json(:user_response) %>



## Retrive detailed information about user identified by user email address ![alt text][EM]

    GET Users/User

Returns detailed user informations.


### Parameters

Name            | Type       | Description
----------------|------------|------------------------
`email`	        |`string`    | User email address.


### Example request

In this example we fetch user (with `email` = `john.fibo@perfectgym.ok`) detailed information.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Users/User?email=john.fibo@perfectgym.pl
```


### Example response

<%= headers 200 %>
<%= json(:user_response) %>



## Retrive detailed information about user identified by personal id ![alt text][EM]

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
     http://yoursubdomain.perfectgym.com/Api/Users/User?personalId=80010101234
```


### Example response

<%= headers 200 %>
<%= json(:user_response) %>



[Contract]: /api/contracts/contractdetails#properties
[Address]: /appendix/datatypes/address
[DirectDebit]: /appendix/datatypes/directdebit

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"
