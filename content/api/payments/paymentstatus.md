---
title: Payment status
---

# Payment status

Payment status represents status of payment executed via online payment system.

{:toc}


## <a name="properties"></a>Payment status properties

Payment status is described by the following properties

Name            | Type        | Description
----------------|-------------|---------------------------
`status`        |`string`     | Payment status. <br><strong>Possible values</strong>: <br><ul><li>Success</li><li>InProgress</li><li>Error</li></ul>
`errorMessage`  |`string`     | Error message in case `status` = `Error`.




## Retrive payment status

    GET Payments/PaymentStatus

Returns status for online payment identified with `paymentId`.


### Parameters

Name         | Type    | Description
-------------|---------|--------------------
`paymentId`  |`string` | Payment identifier returned by payment method in [payment details][PaymentDetails]


### Example request

In this example we fetch payment status for payment identified with `paymentId` = `PGAPI_a12b55c5-d526-4e4e-ae9c`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Payments/PaymentStatus
     	?paymentId=PGAPI_a12b55c5-d526-4e4e-ae9c
```


### Example response

<%= headers 200 %>
<%= json(:paymentstatus_response) %>


 [PaymentDetails]: /appendix/datatypes/paymentdetails