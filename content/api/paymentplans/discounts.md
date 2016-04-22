---
title: Discounts
---

# Discounts

Each user to complete club joining process must select membarship type and accompanying payment plan.
User may also be eligible for discount. Discounts are applied to payment plan fees and may be limited to:

- Employee role
- Payment method

Discount is a summary representation of single discount in your company.

{:toc}

 
## <a name="properties"></a>Discount properties

Payment plan is described by the following properties

Name            					| Type      | Description
------------------------------------|-----------|-----------
`id`            					|`long`   	| Unique identifier of discount.
`isActive`     						|`bool`   	| Indicates if discount is marked as active.
`name`    							|`string` 	| Discount name.
`administartionFeeDiscountType`  	|`string`   | Administration fee discount type. **Possible unit values** : <br><ul><li>`PercentDiscount` - discount by percentage</li><li>`ValueDiscount` - discount by value</li><li>`FixedValueDiscount` - fixed value</li><li>`None` - no discount</li><li>`Unknown` - unknown discount type</li></ul>
`joiningFeeDiscountType`    		|`string`   | Joining fee discount type. **Possible unit values** : <br><ul><li>`PercentDiscount` - discount by percentage</li><li>`ValueDiscount` - discount by value</li><li>`FixedValueDiscount` - fixed value</li><li>`None` - no discount</li><li>`Unknown` - unknown discount type</li></ul>
`membershipFeeDiscountType`    		|`string`   | Membership fee discount type. **Possible unit values** : <br><ul><li>`PercentDiscount` - discount by percentage</li><li>`ValueDiscount` - discount by value</li><li>`FixedValueDiscount` - fixed value</li><li>`None` - no discount</li><li>`Unknown` - unknown discount type</li></ul>
`administartionFeeDiscountValue` 	|`string`   | Administration fee discount value.
`joiningFeeDiscountValue`    		|`string`   | Joining fee discount value.
`membershipFeeDiscountValue`   		|`string`   | Membership fee discount value.
`combineDiscounts`                  |`array`    | An array of [Discount] objects.



        


## List available discounts for a given payment plan ![alt text][EM]

    GET Discounts/Discounts

Returns paginated discounts list available for a given payment plan.


### Parameters

Name      		 | Type   	   | Description
-----------------|-------------|--------------------
`paymentPlanId`  |`long`  	   | **Required**. Payment plan identifier.
`clubId`  		 |`long`  	   | **Required**. Club id. Request returns discounts available in club identified by `clubId`.
`date`    		 |`datetime`   | Request returns discounts available in a given day. Defaults to `now`.
`channel`        |`string`     | Discount availability channel. Request will return only discounts that are available via given channel.
`page`    		 |`int`        | Page number, defaults to `1`.


### Example request

In this example we fetch list of discounts available for payment plan with `paymentPlanId` = `39` and for club with `clubId` = `16`.
All discounts are available for today (no `date` parameter provided)

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Discounts/Discounts
     	?paymentPlanId=39
     	&clubId=16
```


### Example response

<%= headers 200 %>
<%= json(:discounts_response) %>



## Retrive discounted fees for given payment plan ![alt text][EM]

    GET Discounts/DiscountedFees

Returns discounted fees for given payment plan.


### Parameters

Name   	   	   	 | Type  		| Description
-----------------|--------------|--------------------
`paymentPlanId`  |`long`  		| **Required**. Payment plan identifier.
`discountIds`  	 |`array`  		| **Required**. An array of discounts idenifiers to applay. Request returns payment plan fees with cumulative discounts identified with `discountIds` applied.
`date`    	   	 |`datetime`  	| Request returns discounts available in a given day. Defaults to `now`.


### Example request

In this example we fetch payment plan fees with discount with `id` = `10` applied.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Discounts/DiscountedFees
     	?paymentPlanId=39
     	&discountIds=10
```


### Example response

<%= headers 200 %>
<%= json(:discountedfees_response) %>


[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"


