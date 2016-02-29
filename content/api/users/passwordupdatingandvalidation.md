---
title: Password updating and validation
---

# Password updating and validation

This API lest you update user password and validate credentials. User can use it's username and password to login to varions client web and mobile apps, including:
- KIOSK web app
- Client Portal web app
- Perfect Gym Go mobile app


{:toc}


## Update user password

    POST Users/Password

Request updates user password.


### Parameters

Name  	    | Type     		| Description
------------|---------------|------------
`userId`    |`long`    		| **Required**. User identifier.


### Body parameters

Name     			| Type    		| Description
--------------------|---------------|------------
`password`     		|`string`  		| User password.



### Response

[User details][UserDetailsProperties].


### Example request

In this example we update user's password.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "password": "new_password",	    
	}' 
	http://yoursubdomain.perfectgym.com/api/Users/Password?userId=236
```


### Example response

<%= headers 200 %>
<%= json(:usertermsandconditions_response) %>



## Password reset

	POST Users/ResetPassword

Request resets password and sends user an email with new password.


### Parameters

Name  	    | Type     		| Description
------------|---------------|------------
`email`     |`string`  		| **Required**. Email address of a user that password is to be reset.



### Response

Request resturns no content.


### Example request

In this example we reset password of a user identified with `john.fibo@perfectgym.pl` email address.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 	 
	http://yoursubdomain.perfectgym.com/api/Users/ResetPassword?email=john.fibo@perfecthym.pl
```


### Example response

<%= headers 204 %>




## Validate user credentials

    POST Users/ValidateCredentials

Request checks if user's name and password are valid.


### Body parameters

Name     			| Type    		| Description
--------------------|---------------|------------
`userName`     		|`string`  		| User name.
`password`     		|`string`  		| User password.



### Response

[User details][UserDetailsProperties] if operation is successful, or collection of [errors][Error] with [validate credentials error codes][ValidateCredentialsErrorCode] otherwise.


### Example request

In this example we update user's password.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	 	"userName": "john.fibo@perfectgym.pl",
	    "password": "new_password",	    
	}' 
	http://yoursubdomain.perfectgym.com/api/Users/ValidateCredentials
```


### Example response

<%= headers 200 %>
<%= json(:usertermsandconditions_response) %>


### Example error response

Invalid user credentials generates following response:

<%= headers 400 %>
<%= json(:usercredentials_error_response) %>



[Error]: /appendix/datatypes/error
[UserDetailsProperties]: /api/users/userdetails#properties
[ValidateCredentialsErrorCode]: /appendix/errorcodes/validatecredentialserrorcode