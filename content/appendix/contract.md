---
title: Contract
layout: appendix
---

# Contract

Represents an individual user's contract.


## Contract properties

Contract is described by the following properties


Name            | Type      | Description
-----|----------|----------------------
`id`            |`long`     					| Unique identifier of contract.
`timestamp`     |`long`     					| Timestamp of contract. Indicates when contract was last modified.
`signDate`    	|`string`   					| Contract's sign date.
`startDate`    	|`string`   					| Contract's start date.
`cancelDate`    |`string`   					| Contract's cancel date.
`endDate`   	|`string`   					| Contract's end date.
`membership`   	|[Membership][Membership]   	| Contract's membership.
`paymentPlan`   |[Payment paln][PaymentPlan]   	| Contract's payment plan.
`isActive`     	|`bool`     					| Indicates if contract is marked as active.
`isDeleted`     |`bool`     					| Indicates if contract was deleted from your user's contracts list.



[Membership]: /appendix/membership
[PaymentPlan]: /appendix/paymentplan