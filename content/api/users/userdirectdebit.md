---
title: Direct debit
---

# Direct debit

This API lets you assign bank account details to a club user.

{:toc}


## Assign bank account details to a club user ![alt text][EM]

    POST Users/DirectDebit

Request assigns bank account details to existing club user and selects it as current payment method.


### Parameters

Name  	    | Type     		| Description
------------|---------------|------------
`userId`    |`long`    		| **Required**. User identifier. Request assigns new bank account details to user identified by `userId`.


### Body parameters

Name     	    	| Type       		| Description
--------------------|-------------------|------------
`accountNumber` 	|`string`    		| Bank account number (IBAN format).
`ownerName`     	|`string`    		| Bank account owner name.
`street`    		|`int`	    		| Bank account owner street.
`cityAndPostalCode` |`int`				| Bank account owner city and zip code.
`countrySymbol`     |`string`			| Bank account country symbol.
`bic`               |`string`			| Bank account BIC number.
`isPaidByDifferentPerson`	|`bool`						| Indicates if contract is paid by other person.



### Response

[User details][UserDetailsProperties] including bank account details if operation is successful, or collection of [errors][Error] with [direct debit error codes][DirectDebitErrorCode].


### Example request

In this example we assign bank account details to a user with `id` = `236`.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "accountNumber": "61 1090 1014 0000 0712 1981 2874",
	    "ownerName": "John Fibo",
	    "street": "Przyczolkowa 334",
		"cityAndPostalCode": "02-962 Warszawa",
        "countrySymbol": "pl",			 
	}' 
	http://yoursubdomain.perfectgym.com/Api/Users/DirectDebit?userId=236
```


### Example response

<%= headers 200 %>
<%= json(:userdirectdebit_response) %>


### Example error response

<%= headers 400 %>
<%= json(:directdebit_error_response) %>



## <a name="directdebitsigning"></a>Execute direct debit agreement signing ![alt text][EM]

    POST Users/SignDirectDebit

Request is used to sign direct debit agreement PDF document with a user signature.


### Body parameters

Name     	    	| Type       		| Description
--------------------|-------------------|------------
`contractId` 		|`long`  	  		| Contract unique identifier. User has to have valid contract to sign direct debit agreement.
`languageCode`     	|`string`    		| Language identifier direct debit agreement should be translated to (for example EN, DE etc.).
`signatureData`		|`string`	   		| Signature data `base64` encoded.
`sourceIp`			|`string`			| IP address of client user signs direct debit agreement on.
`comment`			|`string`			| Contract signing comment


### Response

[User details][UserDetailsProperties] including signed direct debit agreement URL.


### Example request

In this example we sign direct debit agreement for user with `id` = `236`.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "contractId": "10358",
	    "languageCode": "EN",
	    "signatureData": "... signature data ...",	
	    "sourceIp": "192.168.1.100",
	    "comment": "Sample comment"	
	}' 
	http://yoursubdomain.perfectgym.com/Api/Users/SignDirectDebit
```


### Example response

<%= headers 200 %>
<%= json(:userdirectdebitsign_response) %>




[UserDetailsProperties]: /api/users/userdetails#properties
[Error]: /appendix/datatypes/error
[DirectDebitErrorCode]: /appendix/errorcodes/directdebiterrorcode

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"
