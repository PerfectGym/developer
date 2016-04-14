---
title: Direct debit
layout: appendix
---

# Direct debit

Represents an direct debit detailed information.


## Direct debit properties

Direct debit is described by the following properties


Name            	| Type      		| Description
--------------------|-------------------|----------------------
`accountNumber` 	|`string`    		| Bank account number (IBAN format).
`ownerName`     	|`string`    		| Bank account owner name.
`street`    		|`int`	    		| Bank account owner street.
`cityAndPostalCode` |`int`				| Bank account owner city and zip code.
`documentUrl`		|`string`			| URL to direct debit agreement PDF file signed by user (for details see [direct debit agreement signing][DirectDebitSigning]).


[DirectDebitSigning]: /Api/users/userdirectdebit#directdebitsigning
