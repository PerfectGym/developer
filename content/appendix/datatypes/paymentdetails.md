---
title: Payment details
layout: appendix
---

# Payment details

Represents an URL and transaction identifier, which allows to execute pyment using online payment systems.


## Payment details properties

Payment details is described by the following properties


Name            | Type      | Description
-----|----------|----------------------
`paymentUrl`    |`string`   | Payment URL. User should be redirected to payment url to initiate online payment
`paymentId`		|`string`   | Payment identifier. Can be used to check payment status using [payment status][PaymentStatus] endpoint.


[PaymentStatus]: /api/payments/paymentstatus
