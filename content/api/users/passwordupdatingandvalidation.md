---
title: Password updating and validation
---

# Password updating and validation

This API lest you create user account, update user password and validate user's credentials. 
User can use it's username and password to login to API in end user mode using varions client web and mobile apps, including:
- KIOSK web app
- Client Portal web app
- Perfect Gym Go mobile app
- Your custom app


{:toc}


## <a name="signup"></a>Sign up for end user account ![alt text][EM]

    GET Users/SignUp

Request creates an end user account and returns password reset token. 
To complete sign up process user has to update account password using [password reset method][PasswordReset].
After completing sign up process user credentials can be used to access API in end user mode.


### Parameters

Name  	    | Type     		| Description
------------|---------------|------------
`email`		|`string`  		| **Required**. User email.


### Response

[Password reset token][PasswordResetToken].


### Example request

In this example we sign up for an account for user identified with given email address.

``` command-line

curl -X GET 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 	 
	http://yoursubdomain.perfectgym.com/Api/Users/SignUp?email=john.fibo@perfectgym.pl
```


### Example response

<%= headers 200 %>
<%= json(:userresetpasswordtoken_response) %>



## Request password reset token ![alt text][EM]

    GET Users/ResetPassword

Request returns password reset token. Using password reset token user is able to update his account password.
For details see [password reset method][PasswordReset].


### Parameters

Name  	    | Type     		| Description
------------|---------------|------------
`email`     |`string` 		| **Required**. User email.


### Response

[Password reset token][PasswordResetToken].


### Example request

In this example user's password reset token.

``` command-line

curl -X GET 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 http://yoursubdomain.perfectgym.com/Api/Users/ResetPassword?email=john.fibo@perfectgym.pl
```


### Example response

<%= headers 200 %>
<%= json(:userresetpasswordtoken_response) %>



## <a name="passwordreset"></a>Password reset ![alt text][EM]

	POST Users/ResetPassword

Request updates user account password. Prior to updating user account password, password reset token must be aquired.


### Body parameters

Name  	    			| Type     		| Description
------------------------|---------------|------------
`resetPasswordToken`	|`string`  		| **Required**. Password reset token.
`password`				|`string`  		| **Required**. New user account password.



### Response

[User details][UserDetailsProperties].


### Example request

In this example we update password for account with a given password reset token associated.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 	 
	 -d '{
	 	"passwordToken": "9c10cdf6-565d-47cf-a7af-d27e6f989df8",
	    "password": "new_password"	    
	}' 
	http://yoursubdomain.perfectgym.com/Api/Users/ResetPassword
```


### Example response

<%= headers 200 %>
<%= json(:usertermsandconditions_response) %>




## Validate user credentials ![alt text][EM]

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

In this example we validate user credentials.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	 	"userName": "john.fibo@perfectgym.pl",
	    "password": "password",	    
	}' 
	http://yoursubdomain.perfectgym.com/Api/Users/ValidateCredentials
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
[PasswordReset]: /api/users/passwordupdatingandvalidation#passwordreset
[PasswordResetToken]: /appendix/datatypes/passwordresettoken

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"
