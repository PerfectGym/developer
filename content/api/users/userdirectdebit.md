---
title: Direct debit
---

# Direct debit

This API lest you assign bank account details to a club user.

{:toc}


## Assign bank account details to a club user

    POST Users/DirectDebit

Request assigns bank account details to existing club user.


### Parameters

Name  	    | Type       		| Description
------------|-------------------|------------
`userId`    |`string`    		| **Required**. User identifier. Request assigns new bank account details to user identified by `userId`.


### Body parameters

Name     	    	| Type       		| Description
--------------------|-------------------|------------
`accountNumber` 	|`string`    		| Bank account number (IBAN format).
`ownerName`     	|`string`    		| Bank account owner name.
`street`    		|`int`	    		| Bank account owner street.
`cityAndPostalCode` |`int`				| Bank account owner city and zip code.



### Response

[User details][UserDetailsProperties] representing user bank account details was assigned to.


### Example request

In this example we assign bank account details to a user with `id` = `236`.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "accountNumber": "61 1090 1014 0000 0712 1981 2874",
	    "ownerName": "John Fibo",
	    "street": "Przyczółkowa 334",
		"cityAndPostalCode": "02-962 Warszawa",		 
	}' 
	http://yoursubdomain.perfectgym.com/api/Users/DirectDebit?userId=236
```


### Example response

<%= headers 200 %>
<%= json(:userdirectdebit_response) %>



[UserDetailsProperties]: /api/users/userdetails#properties
[Contract]: /appendix/datatypes/contract
