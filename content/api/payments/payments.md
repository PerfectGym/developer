---
title: Payments
---

# Payments

This API allows user to pay contract fees using online payment systems.

{:toc}



## Execute online payment

    GET Payments/Pay/{userId}

Returns online payment URL and transaction identifier.


### Path parameters

Name      | Type   | Description
----------|--------|--------------------
`userId`  |`long`  | User identifier.


### Query string parameters

Name      	   | Type  	   | Description
---------------|-----------|--------------------
`amount`  	   |`decimal`  | Amount to be paid. After successful payment amount is automaticly distributet to satisfy earliest pending fees first.
`redirectUrl`  |`string`   | URL with query `paymentId` parameter attached. Online payment system will redirect to a given url after transaction is completed. 


### Response

[Payment details][PaymentDetails] including payment URL user should be redirected to, to proceed with a payment.



### Example request

In this example we request payment URL, user can execute payment with.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Payments/Pay/236?amount=100
```


### Example response

<%= headers 200 %>
<%= json(:payment_response) %>



[Fee]: /appendix/datatypes/fee
[PaymentDetails]: /appendix/datatypes/paymentdetails