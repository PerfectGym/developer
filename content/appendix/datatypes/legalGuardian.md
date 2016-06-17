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
`name`     	    |`string`   | **Required**. Name.
`secondName`    |`string`   | Second name.
`lastName`      |`string`   | **Required**. Last name.
`city`    		|`string`   | **Required**. City name.
`country`   	|`string`   | Country name. Only for imformational purposes.
`countrySymbol` |`string`   | **Required**. Country ISO symbol. Country is set based on this parameter (not on country name).
`postalCode`   	|`string`   | Postal code.
`street`   	    |`string`   | Street name.
`bankAccount`   |`string`   | Bank account number.
`signatureDataBase64`   |`string`   | **Required**. Signature photo data `base64` encoded.

