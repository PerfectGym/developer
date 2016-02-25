---
title: User credit card
---

# User credit card

This API lest you assign credit card to a club user.

{:toc}


## Assign credit card to a club user

    POST Users/CreditCard

Request assigns a credit card to existing club user and selects it as current payment method.


### Parameters

Name  	    | Type    		| Description
------------|---------------|------------
`userId`    |`long`    		| **Required**. User identifier. Request assigns new credit card to user identified by `userId`.


### Body parameters

Name     	    	| Type       		| Description
--------------------|-------------------|------------
`bankName` 			|`string`    		| Name of credit card issuer
`cardNumber`     	|`string`    		| Credit card number.
`expirationYear`    |`int`	    		| Credit card expiration year.
`expirationMonth`  	|`int`				| Credit card expiration month.
`addressCity`     	|`string`    		| Card holder city name.
`addressLine`     	|`string`    		| Card holder address.
`addressZipCode`    |`string`    		| Card holder zip code.
`cardHolderName`    |`string`    		| Card holder name.
`cvcCvv`     		|`string`    		| Card CVC / CVV.


### Response

[User details][UserDetailsProperties] representing user credit card was assigned to.


### Example request

In this example we assign credit card to a user with `id` = `236`.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "bankName": "Bank",
	    "cardNumber": "5555555555554444",
	    "expirationYear": 2016,
		"expirationMonth": 12,
		"addressCity": "Warsaw",
		"addressLine": "ul. Przyczolkowa 334",
		"addressZipCode": "02-962",
		"cardHolderName": "John Fibo",
		"cvcCvv": "000"    
	}' 
	http://yoursubdomain.perfectgym.com/api/Users/CreditCard?userId=236
```


### Example response

<%= headers 200 %>
<%= json(:usercontract_response) %>



[UserDetailsProperties]: /api/users/userdetails#properties

