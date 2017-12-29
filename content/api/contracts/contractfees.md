---
title: Contract fees
---

# Contract fees

This section provides an overview of contract fees. 


## <a name="properties"></a>Contract fee properties

Contract fee specyfic properties are described here.


Name        	| Type    						| Description
----------------|-------------------------------|----------------------
`id`            |`long`     					| Unique identifier of contract.
`timestamp`    	|`long`     					| Timestamp. Indicates when resource was last modified.
`signDate`    	|`string`   					| Contract sign date.
`startDate`    	|`string`   					| Contract start date.
`cancelDate`    |`string`   					| Contract cancel date.
`endDate`   	|`string`   					| Contract end date.
`isActive`     	|`bool`     					| Indicates if contract is marked as active.
`isDeleted`     |`bool`                         | Indicates if resource is deleted.
`administarationFee`|`decimal`				    | Contract administaration fee.
`freezFee`		|`decimal`						| Contract freez fee. 
`joiningFee`	|`decimal`						| Contract joining fee.
`membershipFee` |`decimal`   					| Contract membership fee.
`totalFee`      |`decimal`   					| Contract total fee.
`paidTransactions`|`array`						| An array of [ContractFeeDetails][Fee details] objects representing fee details.
`pendingTransactions`|`array`					| An array of [ContractFeeDetails][Fee details] objects representing fee details.



## Retrieve detailed information about specific user contract fees  ![alt text][EM]

    GET Contracts/Contract/Fees

Returns detailed contract fees informations.


### Parameters

Name            | Type       | Description
----------------|------------|------------------------
`contractId`    |`long`      | **Required**. Contract identifier.



### Example request

In this example we fetch contract fees with `id` = `10358` detailed information.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Contracts/Contract/Fees?contractId=10358    	
```


### Example response

<%= headers 200 %>
<%= json(:contractfee_response) %>


[ContractFeeDetails]: /appendix/datatypes/contractfeedetails

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"

