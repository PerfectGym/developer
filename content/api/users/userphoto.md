---
title: User photo
---

# User photo

This API lest you assign photo to a club user.

{:toc}


## Assign photo to a club user

    POST Users/Photo

Request assigns photo to a club user.


### Parameters

Name  	    | Type     		| Description
------------|---------------|------------
`userId`    |`long`    		| **Required**. User identifier. Request assigns new photo to user identified by `userId`.


### Body parameters

Name     	    | Type       		| Description
----------------|-------------------|------------
`extension` 	|`string`    		| Photo file extension. <br><strong>Possible values</strong>: <br><ul><li>BMP</li><li>JPEG</li><li>JPG</li><li>PMG</li></ul>
`data`     		|`string`    		| Photo data `base64` encoded.



### Response

[User details][UserDetailsProperties].


### Example request

In this example we assign photo to a user with `id` = `236`.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "extension": "png",
	    "data": "... photo data ...",	     
	}' 
	http://yoursubdomain.perfectgym.com/Api/Users/Photo?userId=236
```


### Example response

<%= headers 200 %>
<%= json(:userphoto_response) %>



[UserDetailsProperties]: /Api/users/userdetails#properties

