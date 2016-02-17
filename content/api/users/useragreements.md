---
title: Agreements
---

# Agreements

This API lest you store information that user has agreed to marketing and terms and conditions agreements.

{:toc}


## Save user agreements

    POST Users/Agreements

Request saves information that user has agreed to marketing and terms and conditions agreements.


### Parameters

Name  	    | Type       		| Description
------------|-------------------|------------
`userId`    |`string`    		| **Required**. User identifier.


### Body parameters

Name     	    				| Type    		| Description
--------------------------------|---------------|------------
`newsletterAgreement`     		|`bool`    		| `true` if user has agreed to receive marketing newsletter, `false` otherwise.
`termsAndConditionsAgreement` 	|`bool`    		| `true` if user has agreed to general terms and conditions, `false` otherwise.



### Response

[User details][UserDetailsProperties].


### Example request

In this example we store information that user has with `id` = `236` has agreed to service terms and conditions.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "termsAndConditionsAgreement": true,
	    "newsletterAgreement": false,	    
	}' 
	http://yoursubdomain.perfectgym.com/api/Users/Agreements?userId=236
```


### Example response

<%= headers 200 %>
<%= json(:usertermsandconditions_response) %>



[UserDetailsProperties]: /api/users/userdetails#properties
[Contract]: /appendix/datatypes/contract