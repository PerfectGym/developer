---
title: Payments
---

# Payments

This API allows user to pay contract fees using online payment systems.

{:toc}



## Execute online payment

    GET Payments/Pay

Returns online payment URL and transaction identifier.


### Parameters

Name      	   | Type  	   | Description
---------------|-----------|--------------------
`userId`  	   |`long`     | **Required**. User identifier.
`amount`  	   |`decimal`  | **Required**. Amount to be paid. After successful payment amount is automaticly distributet to satisfy earliest pending fees first.
`redirectUrl`  |`string`   | URL with query `paymentId` parameter attached. Online payment system will redirect to a given url after transaction is completed. 


### Response

[Payment details][PaymentDetails] including payment URL user should be redirected to, to proceed with a payment.



### Example request

In this example we request payment URL, user can execute payment with.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Payments/Pay
     	?userId=236
     	&amount=100
```


### Example response

<%= headers 200 %>
<%= json(:payment_response) %>



## Execute payment with credit card

    POST Payments/PayWithCreditCard

Request executes payment with user credit card. Credit card details must be assigned using [CreditCard][CreditCard] request.

### Body parameters

Name 	     	    | Type  	| Description
--------------------|-----------|--------------------
`userId`  	   		|`long`     | **Required**. User identifier.
`feeIds`  			|`array`  	| **Required**. An array of `long` values, each representing fee identifier to be paid.
`totalAmmount`  	|`decimal`  | **Required**. Total amount to be paid (must be equal to sum of all fees).


### Response

[Payment status][PaymentStatus] if operation is successful, or collection of [errors][Error] with [credit card payment error codes][CreditCardPaymentErrorCode] otherwise.



### Example request

In this example we request payment of pending contract fees for user identified with `id` = `236`.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     -H "Content-Type: application/json" 
     -d '{
        	"userId": 236,
        	"feeIds": [3889, 3890, 3891],
    		"totalAmount": 32.8
    }' 
    http://yoursubdomain.perfectgym.com/Api/Payments/PayWithCreditCard     	
```


### Example response

<%= headers 200 %>
<%= json(:paymentstatus_response) %>



### Example error response

Total amount is not equal to sum of all fees to be paid.

<%= headers 400 %>
<%= json(:payment_error_response) %>



[Fee]: /appendix/datatypes/fee
[PaymentStatus]: /Api/payments/paymentstatus#properties
[PaymentDetails]: /appendix/datatypes/paymentdetails
[CreditCard]: /Api/users/usercreditcard
[Error]: /appendix/datatypes/error
[CreditCardPaymentErrorCode]: /appendix/errorcodes/creditcardpaymenterrorcode