---
title: Payment plans
---

# Payment plans

Payment plan represents information about membership fees and payment schedule. 
Each user to complete club joining process must select membarship type and accompanying payment plan.
Each payment plan is asigned to exactly one membership type. Payment plan may be limited to:

- Employee role
- Clubs


Payment plan is a summary representation of single payment plan in your company.

{:toc}


## <a name="properties"></a>Payment plan properties

Payment plan is described by the following properties

Name            		| Type      | Description
------------------------|-----------|-----------
`id`            		|`long`     | Unique identifier of payment plan.
`timestamp`    			|`long`     | Timestamp. Indicates when resource was last modified.
`name`    				|`string`   | payment plan name.
`isActive`     			|`bool`     | Indicates if payment plan is marked as active.
`isAddOnPaymentPlan`    |`bool`     | Indicates if payment plan is marked as add on payment plan.
`isDeleted`     		|`bool`     | Indicates if resource is deleted.



## List payment plan with timestamp

    GET PaymentPlans/PaymentPlans

Returns paginated payment plans list.


### Parameters

Name         | Type     | Description
-----|-------|----------|------------
`timestamp`  |`long`  	| Timestamp. Request returns payment plans with timestamp grater then `timestamp`, defaults to `0`.
`isActive `  |`bool`  	| Indictes if payment plan is marked as active, defaults to `false`.
`startDate`  |`datetime`| Request returns payment plans with start date grater then `startDate`, defaults to `1753-1-1`.
`endDate`    |`datetime`| Request returns payment plans with end date lower then `endDate`, defaults to `9999-12-13`.


### Example request

In this example we fetch list of all payment plans (`timestamp` parameter defaults to `0`) 
available in a company.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/PaymentPlans/PaymentPlans?timestamp=0
```


### Example response

<%= headers 200 %>
<%= json(:paymentplans_response) %>



## List payment plans available in a given club

    GET PaymentPlans/PaymentPlans

Returns paginated payment plans list available in given club.


### Parameters

Name      			| Type     | Description
--------------------|----------|------------
`clubId`  			|`long`    | **Required**. Club identifier.
`addOnPaymentPlans` |`bool`	   | If `true` requests returns only add on payment plans, if `false` request returns only payment plans that are not marked as add on plans. Parameter defaults to `false`.
`channel` 			|`string`  | Payment plan availability channel. Request will return only payment plans that are available via given channel.
`page`    			|`int`     | Page number, defaults to `1`.
`startDate`  		|`datetime`| Request returns payment plans with start date grater then `startDate`, defaults to `1753-1-1`.
`endDate`    		|`datetime`| Request returns payment plans with end date lower then `endDate`, defaults to `9999-12-13`.

### Example request

In this example we fetch list of all payment plans available in club identified with `clubId` = `16`.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/PaymentPlans/PaymentPlans
     	?clubId=16
```


### Example response

<%= headers 200 %>
<%= json(:paymentplans_response) %>



