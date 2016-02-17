---
title: Contract details
---

# Contract details

COntract details is detaild representation of single user contract. 

{:toc}


## Contract details properties

Contract details holds the same data as [Contract][ContractProperties] plus some detailed features of a contract.
Only contract details specyfic properties are described here.


Name        	| Type    						| Description
----------------|-------------------------------|----------------------
`membership`   	|[Membership][Membership]   	| Contract's membership.
`paymentPlan`   |[Payment paln][PaymentPlan]   	| Contract's payment plan.
`discounts`		|`array`						| An array of [discount][Discount] objects representing discounts applied to contract.



## Retrive detailed information about specyfic user contract.

    GET Contracts/Contract

Returns detailed user contract informations.


### Parameters

Name            | Type       | Description
----------------|------------|------------------------
`userId`        |`long`      | **Required**. User identifier.
`userId`        |`long`      | **Required**. Contract identifier.



### Example request

In this example we fetch user contract with `id` = `10358` detailed information.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Contracts/Contract?userId=236&contractId=10358    	
```


### Example response

<%= headers 200 %>
<%= json(:contract_response) %>



[ContractProperties]: /api/contracts/contracts#properties 
[Membership]: /api/memberships/memberships#properties
[PaymentPlan]: /api/paymentplans/paymentplans#properties
[Discount]: /api/paymentplans/discounts#properties
