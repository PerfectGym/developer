---
title: Authentication
---

# Authentication

PerfectGym API uses token-based authentification as an authentification protocol. 
Requests that require authentication will return `401 Unauthorized` if no valid token
is provided. 

{:toc}


## <a name="prerequisites"></a>Prerequisites

PerfectGym API can work in employee or end user mode. 
In employee mode API works on behalf of a club employee.
In end user mode API works on behalf of a club member.

To access API in employee mode, you need a special API user in your Perfect Gym instalation. 
Please [contact Perfect Gym](mailto:pomoc@perfectgym.com) and we will provide you user name
and password used to authenticate your app with PerfectGym API employee mode.

To access API in end user mode, user needs to sign up for an end user account. After signing up
for an end user account, user's credentials can be used to access API in end user mode. 
For details see [signing up for end user account][SignUpForEndUserAccount]

Each method described in PerfectGym API documentation is marked as working in employee mode, end user mode or both.



## Authentication flow

### 1. Request access token

	POST https://yoursubdomain.perfectgym.com/Api/oauth/authorize


### Body parameters

Name | Type | Description
-----|------|--------------
`username`  |`string` | **Required**. User name you received from PerfectGym (employee mode) or club member email address (end user mode). For details see [prerequisites](#prerequisites).
`password`  |`string` | **Required**. User password you received from PerfectGym (employee mode), or club member password (end user moded). For details see [prerequisites](#prerequisites).
`grant_type`|`string` | **Required**. This has to be explicitly set to `password`.

Authentication parameters must be encoded using `application/x-www-form-urlencoded` content type.


### Request example

``` command-line
curl -i -X POST 
	-H "Content-Type: application/x-www-form-urlencoded" 
	-d "password=yourpassword
		&username=yourusername
		&grant_type=password" 
	https://yoursubdomain.perfectgym.com/Api/oauth/authorize
```


### Response

<%= headers 200 %>
<%= json(:oauth_response) %>
Token expiration time is presented in seconds.



### 2. Use the access token to access the API

The access token allows you to make authenticated requests to the API. 
You can pass the token by including it in the Authorization header.

	Authorization: bearer OAUTH-TOKEN

Authorization header should be included in all subsequent API requests.


### Authenticated request example

``` command-line
curl -i 
	-H "Authorization: Bearer abcdefgh12345678" 	
	https://yoursubdomain.perfectgym.com/Api/Classes/Classes/1
```


[SignUpForEndUserAccount]: /api/users/passwordupdatingandvalidation#signup


