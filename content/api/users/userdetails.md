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
`cardIsBlocked`       			|`bool`   				    | User membership current card status.
`facebookId`                    |`long`                     | Identifier of Facebook account user has signed up for end user account with. For details see [Sign up with Facebook][SignUpWithFacebook].
`email`          				|`string`   				| User email address.
`emailAddressIsConfirmed`		|`bool`						| Does email address has been confirmed by the user.
`birthDate`         			|`string`   				| User birth date.
`isForeigner`					|`bool`						| Indicates if user is a forigner.
`hasAccount`					|`bool`						| Indicates if user has signed up for end user account.
`hasPassword`                   |`bool`                     | Indicates if user has provided password for his end user account.
`language`      				|`string`   				| User preferred language .
`phoneNumber`      				|`string`   				| User phone number.
`idCardName`					|`string`					| User identity card name.
`idCardNumber`  				|`string`					| User identity card number.
`legalGuardian`  				|`string`					| User legal guardian full name.
`newsletterAgreement`			|`bool`						| Indicates if user accept newsletter agreement.
`termsAndConditionsAgreement`  	|`bool`						| Indicates if user accept terms and conditions  agreement.
`address`           			|[Address][Address]     	| User address.
`contracts`   					|`array`   					| An array of [Contract][Contract] objects, each representing user's contract.
`cards`   					    |`array`   					| An array of [Card][Card] objects, each representing user's membership card.
`directDebit`					|[DirectDebit][DirectDebit]	| User direct debit information.
`homeClubId`					|`long`						| User home club identifier.
`registeredAtClubId`			|`long`						| User registration club identifier.
`isActive`     					|`bool`     				| Indicates if cuser is marked as active.
`prepaidAmount`     			|`decimal`     				| User prepaid account value .
`employee`     			        |[Employee][Employee]     	| If user is a employee, field contains employee details .




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



## Retrive detailed information about user identified by parameters ![alt text][EM]

    GET Users/Search

Returns detailed user informations.


### Parameters

Name            | Type       | Description
----------------|------------|------------------------
`email`	        |`string`    | User email address.
`cardNumber`    |`string`    | User card number.
`userNumber`    |`string`    | User number.
`personalId`    |`long`      | User personal id.
`userId`        |`long`      | User id.
`phone`         |`string`    | User mobile phone number

### Example request

In this example we fetch user (with `email` = `john.fibo@perfectgym.ok`) detailed information.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Users/Search?email=john.fibo@perfectgym.pl
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
[Card]: /appendix/datatypes/card
[Employee]: /appendix/datatypes/employee
[DirectDebit]: /appendix/datatypes/directdebit
[SignUpWithFacebook]: /api/users/passwordupdatingandvalidation#signupWithFacebook

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"
