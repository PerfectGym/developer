---
title: Contract freeze
layout: appendix
---

# Contract freeze

Represents a contract freeze.


## Contract freeze properties

Contract freeze is described by the following properties


Name       		| Type       		| Description
----------------|-------------------|-----------
`id`      		|`long`  			| Unique identifier of contract freeze.
`startDate`     |`string`  			| Contract freeze start date.
`endDate`      	|`string`  			| Contract freeze edn date.
`reason`      	|[Reason][Reason]  	| Contract freeze reason.
`type`      	|[Type][Type]  		| Contract freeze type.
`isDeleted`  	|`bool`  			| Indicates if resource is deleted.
`timestamp`  	|`long`  			| Timestamp. Indicates when resource was last modified.



[Reason]: /api/contracts/freezereasons#properties
[Type]: /api/contracts/freezetypedetails#properties




