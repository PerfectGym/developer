---
title: Products
---

# Products

This API lets you list all purchases made by the user.

{:toc}


## Get user products ![alt text][EM]

    Get Users/UserProducts

Get information about user's products bought at the club.


### Parameters

Name  	    | Type     		| Description
------------|---------------|------------
`userId`    |`long`    		| **Required**. User identifier.
`clubId`    |`long`    		| **Required**. Club identifier.
 

### Response

[User products][UserProducts].


### Example request

In this example we get all products belongs to user with id `22`.

``` command-line

curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Users/UserProducts?userId=22&clubId=1
```


### Example response

<%= headers 200 %>
<%= json(:userproducts_response) %>


[UserProducts]: /appendix/datatypes/userproducts
[EM]: /assets/images/employee.png "Employee mode"









