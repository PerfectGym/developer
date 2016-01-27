---
title: Payment plan details
---

# Payment plan details

Payment plan details is detaild representation of single payment plan in your company. 

{:toc}


## Payment plan details properties

Payment plan holds the same data as [Payment plan][PaymentPlanProperties] plus some detailed attributes of a payment plan.
Only payment plan details specyfic properties are described here.


Name            	 | Type      | Description
---------------------|-----------|---------------
`startDate`          |`string`   | Payment plan start date.
`endDate`     		 |`string`   | Payment plan end date.
`minimumAge`		 |`int`		 | Minimum age for club member to be able to purchase selected payment plan.
`freezeAllowed`      |`bool`     | `true` if membership with a given payment plan can be freezed, `false` otherwise.
`shortDescription`   |`string`   | Payment plan short description.
`description`        |`string`   | Payment plan description.
`commitmentPeriod`   |`string`   | Minimum commitment period represented as _{value}{unit}_. **Possible unit values** : <br><ul><li>`M` - month</li><li>`D` - day</li></ul><br>**Example**: <br><ul><li>`12M` - twelve months</li><li>`60D` - sixty days</li></ul>
`joiningFee`         |[Fee][Fee] | Joining fee.
`administrationFee`  |[Fee][Fee] | Administration fee.
`freezeFee`          |[Fee][Fee] | Freeze fee.
`paymentInterval`    |`string` 	 | Payment interval represented as _{value}{unit}_. **Possible unit values** : <br><ul><li>`M` - month</li><li>`D` - day</li></ul><br>**Example**: <br><ul><li>`1M` - monthly payment</li><li>`7D` - weekly payment</li></ul>.
          




## Retrive detailed information about specyfic payment plan.

    GET Memberships/PaymentPlan/{paymentPlanId}

Returns detailed payment plan information.


### Path parameters

Name             | Type       | Description
-----------------|------------|------------
`paymentPlanId`  |`long`      | Payment plan identifier.



### Example request

In this example we fetch payment plan with id = `44` detailed information.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Memberships/PaymentPlan/40     	
```


### Example response

<%= headers 200 %>
<%= json(:paymentplandetails_response) %>



[PaymentPlanProperties]: /api/memberships/paymentplans#properties 
[Fee]: /appendix/datatypes/fee


