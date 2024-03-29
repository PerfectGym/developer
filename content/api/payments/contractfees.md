---
title: Pending contract fees
---

# Pending contract fees

Pending contract fee is a summary representation of a fee to be paid by a user.

{:toc}


## <a name="properties"></a>Pending contract fee properties ![alt text][EM]

Pending contract fee is described by the following properties

Name            | Type                        | Description
-----|----------|------------------------------------------
`id`            |`long`                       | Unique identifier of pending fee.
`timestamp`    	|`long`     				  | Timestamp. Indicates when resource was last modified.
`name`     		|`string`                     | Pending fee name.
`description`   |`string`                     | Pending fee description.
`feeType`   	|`string`                     | Pending fee type. <br><strong>Possible values</strong>: <br><ul><li>Prorata</li><li>AdminFee</li><li>JoiningFee</li><li>Prepaid</li><li>Membership</li><li>Freeze</li><li>Manual</li><li>Other</li></ul>
`fee`           |[Fee][Fee]                   | Fee to be paid.
`dueDate`       |`string`                     | Fee due date
`isDeleted`     |`bool`                       | Indicates if resource is deleted.




## List user pending contract fees ![alt text][EM]

    GET Payments/ContractFees

Returns paginated list of conract fees to be paid by a given user.


### Parameters

Name      | Type   | Description
----------|--------|--------------------
`userId`  |`long`  | **Required**. User identifier.


### Example request

In this example we fetch list of pending contract fees of user identified with `id` = `236`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Payments/ContractFees?userId=236
```


### Example response

<%= headers 200 %>
<%= json(:contractpayments_response) %>



[Fee]: /appendix/datatypes/fee

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"