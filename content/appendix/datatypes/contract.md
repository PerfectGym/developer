---
title: Contract
layout: appendix
---

# Contract

Represents an individual user's contract.


## Contract properties

Contract is described by the following properties


Name            | Type      					| Description
----------------|-------------------------------|----------------------
`id`            |`long`     					| Unique identifier of contract.
`timestamp`    	|`long`     					| Timestamp. Indicates when resource was last modified.
`signDate`    	|`string`   					| Contract's sign date.
`startDate`    	|`string`   					| Contract's start date.
`cancelDate`    |`string`   					| Contract's cancel date.
`endDate`   	|`string`   					| Contract's end date.
`membership`   	|[Membership][Membership]   	| Contract's membership.
`paymentPlan`   |[Payment paln][PaymentPlan]   	| Contract's payment plan.
`isActive`     	|`bool`     					| Indicates if contract is marked as active.
`isDeleted`     |`bool`                         | Indicates if resource is deleted.



[Membership]: /api/memberships/memberships#properties
[PaymentPlan]: /appendix/datatypes/paymentplan