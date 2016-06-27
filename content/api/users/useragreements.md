---
title: Agreements
---

# Agreements

This API lets you store information that user has agreed to marketing and terms and conditions agreements.

{:toc}


## Save user agreements ![alt text][EM]

    POST Users/Agreements

Request saves information that user has agreed to marketing and terms and conditions agreements.


### Parameters

Name  	    | Type     		| Description
------------|---------------|------------
`userId`    |`long`    		| **Required**. User identifier.
 

### Body parameters

Name     	    				| Type    		| Description
--------------------------------|---------------|------------
`agreementIds`     		        |`array`    	|  **Required**. An array of long values, each representing agreement identifier .




### Response

[User details][UserDetailsProperties].


### Example request

In this example we store information that user has with `id` = `236` has agreed to service terms and conditions.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	   "agreementIds" : [3]    
	}' 
	http://yoursubdomain.perfectgym.com/Api/Users/Agreements?userId=236
```


### Example response

<%= headers 200 %>
<%= json(:usertermsandconditions_response) %>



[UserDetailsProperties]: /api/users/userdetails#properties
[Contract]: /appendix/datatypes/contract

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"


## Get agreements type 

    GET Users/AgreementType

Get available types of agreements.


### Response

[Agreement types][AgreementType].


### Example request

In this example we get information about types of agreements.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json"
	 
	http://yoursubdomain.perfectgym.com/Api/Users/AgreementType
```
### Example response

<%= headers 200 %>
<%= json(:agreementtype_response) %>

[AgreementType]: /appendix/datatypes/agreementType



