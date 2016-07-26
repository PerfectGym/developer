---
title: User contracts
---

# User contracts

This API lets you list, assign and delete user contracts.

{:toc}


## Add user and assign contract![alt text][EM]

    POST Users/UserContract

Request assigns new contract to new club user.


### Body parameters

Name     	    | Type       				| Description
----------------|---------------------------|------------
`paymentPlanId` |`string`    				| **Required**. Payment plan identifier. Request creates new contract based on payment plan identified by `paymentPlanId`
`startDate`     |`string`    				| **Required**. Contract start date.
`signDate`     	|`string`    				| **Required**. Contract sign date.
`discountIds`   |`array`					| Array of discount identifiers to be applied to contract.
`email`     	|`string`    				| **Required**. User email address.
`homeClubId`	|`long`    					| **Required**. User home club identifier.
`birthDate`     |`string`    				| **Required**. User birth date.
`personalId`    |`string`    				| User personal identifier.
`firstName`     |`string`    				| User first name.
`lastName`     	|`string`    				| User last name.
`phoneNumber`  	|`string`    				| User phone number.
`idCardName`	|`string`					| User identity card name.
`idCardNumber`  |`string`					| User identity card number.
`legalGuardian`	|[LegalGuardian][LegalGuardian]	| User legal guardian.
`isForeigner`	|`bool`						| Indicates if user is a forigner.
`sex`     		|`string`    				| User sex. <br><strong>Possible values</strong>: <br><ul><li>Male</li><li>Female</li></ul>
`address`     	|[Address][Address] 		| User address.
`directDebit`   |[DirectDebit][DirectDebit] | Direct debit.
`additionalContracts`   |`array`			| Array of [Contracts body parameters][ContractParameters] objects.



### Response

[User details][UserDetailsProperties] with [contract][Contract] detailed description.


### Example request

In this example we create new contract based on payment plan with `id` = `44`.
Also discount with `id` = `10` is applied.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "paymentPlanId": 44,
	    "startDate": "2016-01-26T00:00:00",
	    "signDate": "2016-01-26T00:00:00",
	    "discountIds": [10],
        "firstName": "John",
	    "lastName": "Fibo",
	    "email": "john.fibo@perfectgym.pl",
	    "phoneNumber": "0048123456789",
	    "idCardName": "Passport",
        "idCardNumber": "ABC 123456",
        "legalGuardian": "",
	    "birthDate": "1978-06-01T00:00:00",
	    "isForeigner": false,
	    "sex": "Male",
	    "homeClubId": 12,
	    "address": {
	        "line1": "al. Jerozolimskie 114",
	        "line2": "",
	        "city": "Warszawa",
	        "postalCode": "20-259",
	        "country": "Poland"
	    }	    
	}' 
	http://yoursubdomain.perfectgym.com/Api/Users/UserContract
```


### Example response

<%= headers 200 %>
<%= json(:usercontract_response) %>



## Assign contract to a club user ![alt text][EM]

    POST Users/Contract

Request assigns new contract to existing club user.


### Parameters

Name  	    | Type       		| Description
------------|-------------------|------------
`userId`    |`long`	    		| **Required**. User identifier. Request assigns new contract to user identified by `userId`.


### <a name="parameters">  Body parameters

Name     	    | Type       		| Description
----------------|-------------------|------------
`paymentPlanId` |`string`    		| **Required**. Payment plan identifier. Request creates new contract based on payment plan identified by `paymentPlanId`
`startDate`     |`string`    		| **Required**. Contract start date.
`signDate`     	|`string`    		| **Required**. Contract sign date.
`discountIds`   |`array`			| Array of discount identifiers to be applied to contract.



### Response

[User details][UserDetailsProperties] with [contract][Contract] detailed description.


### Example request

In this example we create new contract based on payment plan with `id` = `44` and we assigne it to user with `id` of value `236`.
Also discount with `id` = `10` is applied.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "paymentPlanId": 44,
	    "startDate": "2016-01-26T00:00:00",
	    "signDate": "2016-01-26T00:00:00",
	    "discountIds": [10]	    
	}' 
	http://yoursubdomain.perfectgym.com/Api/Users/Contract?userId=236
```


### Example response

<%= headers 200 %>
<%= json(:usercontract_response) %>



## Delete user contract ![alt text][EM]

    DELETE Users/Contract

Request deletes user contract.


### Parameters

Name  	    	| Type     		| Description
----------------|---------------|------------
`userId`    	|`long`    		| **Required**. User identifier. 
`contractId`    |`long`    		| **Required**. Contract identifier. Request deletes user contract identified by `contractId`.



### Response

[User details][UserDetailsProperties].


### Example request

In this example we delete user contract with `id` = `10358`

``` command-line

curl -X DELETE 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 	 
	http://yoursubdomain.perfectgym.com/Api/Users/Contract?userId=236&contractId=10358
```


### Example response

<%= headers 200 %>
<%= json(:usernocontract_response) %>




## <a name="contractsigning"></a>Execute contract signing ![alt text][EM]

    POST Users/SignContract

Request is used to sign contract PDF document with a user signature.


### Body parameters

Name     	    	| Type       		| Description
--------------------|-------------------|------------
`contractId` 		|`long`  	  		| Contract unique identifier.
`languageCode`     	|`string`    		| Language identifier contract should be translated to (for example EN, DE etc.).
`signatureData`		|`string`	   		| Signature data `base64` encoded.
`sourceIp`			|`string`			| IP address of client user signs contract on.
`comment`			|`string`			| Contract signing comment

 
### Response

[User details][UserDetailsProperties] including signed contract URL.


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
	http://yoursubdomain.perfectgym.com/Api/Users/SignContract
```


### Example response

<%= headers 200 %>
<%= json(:usercontractsigned_response) %>



[UserDetailsProperties]: /api/users/userdetails#properties
[ContractParameters]: /api/users/usercontract#parameters
[Contract]: /api/contracts/contractdetails#properties
[Address]: /appendix/datatypes/address
[DirectDebit]:  /api/users/userdirectdebit
[LegalGuardian]: /appendix/datatypes/legalGuardian

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"
