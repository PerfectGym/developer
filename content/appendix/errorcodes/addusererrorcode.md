---
title: Add user error codes
layout: appendix
---

# Add user error codes

Code       			| Type      | Description
--------------------|-----------|----------------------------------------------
`UserAlreadyExist`  |`string`   | User with provided personal id, mobile phone or email already exists.
`InvalidParameters` |`string`   | Parameter describe by 'property' is invalid or has not occurred in the request.


# Legal guardian error codes

Code       			     | Type      | Description
-------------------------|-----------|----------------------------------------------
`NoSignature`            |`string`   | Signature parameter has not occurred in the request.
`CountrySymbolIsRequired`|`string`   | CountrySymbol parameter has not occurred in the request.
`CityIsRequired`         |`string`   | City parameter has not occurred in the request.
`LastNameIsRequired`     |`string`   | LastName parameter has not occurred in the request.
`NameIsRequired`         |`string`   | Name parameter has not occurred in the request.
`InvalidIBAN`            |`string`   | Invalid IBAN parameterd in the request.


