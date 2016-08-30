---
title: User products
---

# User products

This API lets you list bought products available in club.

{:toc}


## List all user's products ![alt text][EM]

    GET Users/User/Product


### Parameters

Name  	    		| Type     		| Description
--------------------|---------------|------------
`userId`  |`long`    		| **Required**. User identifier. 
`clubId`  |`long`    		| **Required**. Club identifier.


### Example request

In this example we list products bought by user with `id` = `521` in club with `id` = `1`.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 	  
	http://yoursubdomain.perfectgym.com/Api/Users/User/Product?userId=521&clubId=1
```


### Example response

<%= headers 200 %>
<%= json(:user_products) %>





[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"