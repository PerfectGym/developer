---
title: Buy products
---
# Product purchase

##  Buy product ![alt text][EM]

    POST Products/Product/Buy

Use to buy product using user's prepaid account 

### Body parameters

Name 	     	    | Type  	| Description
--------------------|-----------|--------------------
`userId`  	   		|`long`     | **Required**. User identifier.
`productId`  	    |`long`     | **Required**. Product identifier.
`quantity`  	    |`long`     | **Required**. Product quantity.


### Response

[Prepaid Status][PrepaidStatus] 



### Example request

In this example we request to buy product with `productId` = `2` for user identified with `id` = `236`.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     -H "Content-Type: application/json" 
     -d '{
        	"userId": 236,        	
    		"productId": 2,
			"quantity": 1

    }' 
    http://yoursubdomain.perfectgym.com/Api/Products/Product/Buy     	
```


### Example response

<%= headers 200 %>
<%= json(:prepaidstatus_response) %>

[PrepaidStatus]: /appendix/datatypes/prepaiddetails
[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"
