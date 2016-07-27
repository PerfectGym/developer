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



## Execute online payment for product ![alt text][UM]

    POST Products/Product/BuyOnline

Returns online payment URL and transaction identifier.


### Parameters

Name      	   | Type  	   | Description
---------------|-----------|--------------------
`productId`    |`long`     | **Required**. Product identifier.
`quantity`     |`long`     | **Required**. Product quantity.
`redirectUrl`  |`string`   | URL with query `paymentId` parameter attached. Online payment system will redirect to a given url after transaction is completed. 



### Response

[Payment details][PaymentDetails] including payment URL user should be redirected to, to proceed with a payment.



### Example request

In this example we request payment URL, user can execute payment to buy product with `productId` = `2`.

``` command-line
curl -i 
     -X POST 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     -H "Content-Type: application/json" 
     -d '{        	
    		"productId": 2,
			"quantity": 1
         }' 
    http://yoursubdomain.perfectgym.com/Api/Products/Product/BuyOnline
```

### Example response

<%= headers 200 %>
<%= json(:payment_response) %>

[PaymentDetails]: /appendix/datatypes/paymentdetails
[PrepaidStatus]: /appendix/datatypes/prepaiddetails
[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"
