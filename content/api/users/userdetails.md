---
title: User details
---

# User details

User details is detaild representation of single club member in your gym. 

{:toc}


## <a name="properties"></a>User details properties

User details holds the same data as [User][User] plus some detailed features of a user. Only user details specyfic properties are described here.

Name            				| Type      				| Description
--------------------------------|---------------------------|----------------------
`personalId`					|`string`					| User personal identifier.
`number`          				|`string`   				| User number.
`cardNumber`       				|`string`   				| User membership card number.
`email`          				|`string`   				| User email address.
`birthDate`         			|`string`   				| User birth date.
`isForeigner`					|`bool`						| Indicates if user is a forigner.
`hasAccount`					|`bool`						| Indicates if user has signed up for end user account.
`phoneNumber`      				|`string`   				| User phone number.
`idCardName`					|`string`					| User identity card name.
`idCardNumber`  				|`string`					| User identity card number.
`legalGuardian`  				|`string`					| User legal guardian full name.
`newsletterAgreement`			|`bool`						| User identity card name.
`termsAndConditionsAgreement`  	|`bool`						| User identity card number.
`address`           			|[Address][Address]     	| User address.
`contracts`   					|`array`   					| An array of [Contract][Contract] objects, each representing user's contract.
`directDebit`					|[DirectDebit][DirectDebit]	| User direct debit information.
`homeClubId`					|`long`						| User home club identifier.
`isActive`     					|`bool`     				| Indicates if cuser is marked as active.




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



## Retrive authenticated user detailed informations ![alt text][UM]

    GET Users/User

Returns detailed user informations.


### Example request

In this example we fetch authenticated user detailed information.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Users/User
```


### Example response

<%= headers 200 %>
<%= json(:user_response) %>



[User]: /api/users/user#properties
[Contract]: /api/contracts/contractdetails#properties
[Address]: /appendix/datatypes/address
[DirectDebit]: /appendix/datatypes/directdebit

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"
