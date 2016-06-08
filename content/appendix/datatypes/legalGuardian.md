---
title: Legal guardian
layout: appendix
---

# Legal guardian

Represents users legal guardian data and is used accress all PerfectGym API.


## Legal guardian properties

Legal guardian is described by the following properties


Name            | Type      | Description
-----|----------|----------------------
`name`     	    |`string`   | Name.
`secondName`    |`string`   | Second name.
`lastName`      |`string`   | Last name.
`city`    		|`string`   | City name.
`country`   	|`string`   | Country name. Only for imformational purposes.
`countrySymbol` |`string`   | Country ISO symbol. Country is set based on this parameter (not on country name).
`postalCode`   	|`string`   | Postal code.
`street`   	    |`string`   | Street name.
`bankAccount`   |`string`   | Bank account number.
`signatureData`   |`byte[]`   | Signature picture in the form of array of bytes.

