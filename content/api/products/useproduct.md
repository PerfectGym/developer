---
title: Use products 
---
# Product usage

##  Use product ![alt text][EM]

    POST Products/Product/Use

Action to reduce quantity of product 

### Body parameters

Name 	     	    | Type  	| Description
--------------------|-----------|--------------------
`userId`  	   		|`long`     | **Required**. User identifier.
`productId`  	    |`long`     | **Required**. Product identifier.
`quantity`  	    |`long`     | Product quantity. Default value is 1 
`clubId`  			|`long`  	| **Required**. Club identifier.


### Response

Response is described by the following properties

Name            | Type        | Description
----------------|-------------|---------------------------
`status`        |`string`     | Action status. <br><strong>Possible values</strong>: <br><ul><li>Success</li><li>Error</li></ul>
`errorMessage`  |`string`     | Error message in case `status` = `Error`.


### Example request

In this example we request to use product with `productId` = `2` for user identified with `id` = `236`.

``` command-line
curl -i 
     -X POST 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     -H "Content-Type: application/json" 
     -d '{
        	"userId": 236,        	
    		"productId": 2,
			"quantity": 1,
			"clubId": 14

    }' 
    http://yoursubdomain.perfectgym.com/Api/Products/Product/Use     	
```

[PaymentStatus]: /api/payments/paymentstatus#properties
[EM]: /assets/images/employee.png "Employee mode"

