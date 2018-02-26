---
title: Payments
---

# Payments

This API allows user to pay contract fees using online payment systems.

{:toc}


 
## Execute online payment ![alt text][EM]

    GET Payments/Pay

Returns online payment URL and transaction identifier.


### Parameters

Name      	   | Type  	   | Description
---------------|-----------|--------------------
`userId`  	   |`long`     | **Required**. User identifier.
`amount`  	   |`long`     | **Required**. Amount to be paid. After successful payment amount is automaticly distributet to satisfy earliest pending fees first. The parameter is divided by 100 eg. 1250 will be converted to 12.50 
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



## Change user prepaid account value ![alt text][EM]

    POST Payments/Prepaid

Use to add funds to user's prepaid account 

### Body parameters

Name 	     	    	| Type  	| Description
------------------------|-----------|--------------------
`userId`  	   			|`long`     | **Required**. User identifier.
`totalAmount` 			|`decimal`  | **Required**. Amount to add or withdraw (negative value of amount).
`clubId`				|`decimal`	| Identity of club where payment is made.
`paymentMethod`			|`string`	| Method of payment: Cash, Card, Online, MoneyTransfer.
`prepaidSource`			|`string`	| Max length  36. Identity/code/name of machine or device where payment is made.
`operationDescription`	|`string`	| Max length 195. Description of the operation, the reaso of the operation.


### Response

[Prepaid Status][PrepaidStatus] 



### Example request

In this example we request to increase prepaid balance `id` = `236`.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     -H "Content-Type: application/json" 
     -d '{
        	"userId": 236,        	
    		"totalAmount": 32.8,
			"clubId": 15,
			"paymentMethod": "Cash",
			"prepaidSource": "Machine-A01",
			"operationDescription": "Add money by Cash disposal machine"
    }' 
    http://yoursubdomain.perfectgym.com/Api/Payments/Prepaid     	
```


### Example response

<%= headers 200 %>
<%= json(:prepaidstatus_response) %>


## Calculate prepaid bonus value ![alt text][EM]

    GET Payments/Prepaid/Bonus

Use to check prepaid bonus 

### Parameters

Name 	     	    	| Type  	| Description
------------------------|-----------|--------------------
`amount` 			    |`decimal`  | **Required**. Amount to calculate.
`source`			    |`string`	| The source from which the bonus should come: MembershipPortal, Internet, Web, Api.


### Response

[Prepaid Bonus][PrepaidBonus] 


### Example request

In this example we request to check prepaid bonus for amount '200'.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Payments/Prepaid/Bonus
     	?amount=200
```


### Example response

<%= headers 200 %>
<%= json(:prepaidbonus_response) %>



## Execute payment with credit card ![alt text][EM]

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



## Execute manual payment ![alt text][EM]

    POST Payments/ManualContractPayment

Request executes manual payment for user.



### Header parameters

Name            | Type       | Description
----------------|------------|------------------------
`userId`  	   		|`long`     | **Required**. User identifier.

### Body parameters

Name 	     	    | Type  	| Description
--------------------|-----------|--------------------
`paidAmount`  		|`decimal`  | **Required**. Total amount paid.
`description`  		|`string`   | Transaction description.
`contractTransactionType`  		|`string`   | **Required**. Transaction type. <br><strong>Possible values</strong>: <br><ul><li>Prorata</li><li>AdminFee</li><li>JoiningFee</li><li>Membership</li><li>Prepaid</li><li>Manual</li></ul>


### Example request

In this example we request manual payment of pending contract for user identified with `id` = `236`.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     -H "Content-Type: application/json" 
     -d '{
        	"paidAmount": 100,
        	"description": "Transaction description",
    		"contractTransactionType": "Manual"
    }' 
    http://yoursubdomain.perfectgym.com/Api/Payments/ManualContractPayment?userId=236     	
```


### Example response

<%= headers 200 %>
<%= json(:MANUALPAYMENTSTATUS_RESPONSE) %>






[Fee]: /appendix/datatypes/fee
[PaymentStatus]: /api/payments/paymentstatus#properties
[PaymentDetails]: /appendix/datatypes/paymentdetails
[PrepaidStatus]: /appendix/datatypes/prepaiddetails
[PrepaidBonus]: /appendix/datatypes/prepaidbonus
[CreditCard]: /api/users/usercreditcard
[Error]: /appendix/datatypes/error
[CreditCardPaymentErrorCode]: /appendix/errorcodes/creditcardpaymenterrorcode

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"