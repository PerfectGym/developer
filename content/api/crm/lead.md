---
title: Leads
---

# Adding lead

Lead is a person who is potentially interested in a given product or service.
This API allow to add new lead

{:toc}



## Add new lead ![alt text][EM]

    POST Crm/Lead

Request creates new user and adds it to your company user's list.

 

### Body parameters

Name     	    		| Type       					| Description
------------------------|-------------------------------|-------------------------------------
`firstName`     		|`string`    					| Lead first name.
`lastName`     			|`string`    					| Lead last name.
`secondName`     		|`string`    					| Lead second name.
`sex`     				|`string`    					| Lead sex. <br><strong>Possible values</strong>: <br><ul><li>Male</li><li>Female</li></ul>
`email`     			|`string`    					| Lead email address.
`phone`  				|`string`    					| Lead phone number.
`rating`  				|`int`    					    | Lead rating <strong>Possible values</strong>: (1,2,3).
`zipCode`  				|`string`    					| Lead zip code.
`address`  				|`string`    					| Lead address.
`birthDate`     		|`dateTime`    					| Lead birth date.
`clubId`    			|`long`    						| Club identifier.
`sourceId`    			|`long`    						| Source identifier.
`referralId`    		|`long`    						| Recommending club memeber identifier.
`consultantId`    		|`long`    						| Lead consultant identifier.
`phoneMarketingAgreement`|`bool`    					| Consent to telephone contact.
`agreement`				|`array`  						| An array of [Agreement][Agreement] objects.
 
  
**Fields requirements depends on system settings**

### Example request

In this example we add new lead with some sample data.

``` command-line

curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "firstName": "John",
	    "lastName": "Fibo",
	    "email": "john.fibo@perfectgym.pl",
	    "phone": "0048123456789",
	    "birthDate": "1978-06-01T00:00:00",
	    "clubId": 10,
	    "sourceId": 1,
	    "phoneMarketingAgreement": true	    
	}' 
	http://yoursubdomain.perfectgym.com/Api/Crm/Lead
```

[EM]: /assets/images/employee.png "Employee mode"


## Get lead sources  

    GET Crm/Lead/Sources

Get lead source defined by dictionary.


### Example request

In this example we get information about leas sources.

``` command-line

curl -i	
     -X GET 
     -H "Authorization: Bearer $ACCESS_TOKEN" 
     -H "Content-Type: application/json"
	 
	http://yoursubdomain.perfectgym.com/Api/Crm/Lead/Sources
```
### Example response

<%= headers 200 %>
<%= json(:leadsources_response) %>


## Get lead agreements  

    GET Crm/Lead/Agreements

Get agreements to present to a potential customer.


### Response

[Agreement types][AgreementType].


### Example request

In this example we get information about types of agreements.

``` command-line

curl -i	
     -X GET  
     -H "Authorization: Bearer $ACCESS_TOKEN" 
     -H "Content-Type: application/json"
	 
	http://yoursubdomain.perfectgym.com/Api/Crm/Lead/Agreements
```
### Example response

<%= headers 200 %>
<%= json(:agreementtype_response) %>

[AgreementType]: /appendix/datatypes/agreementType
[Agreement]: /appendix/datatypes/agreement



