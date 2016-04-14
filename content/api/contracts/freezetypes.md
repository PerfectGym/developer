---
title: Freeze types
---

# Freeze types

Freeze type is a summary representation of contract freeze parameters.

{:toc}



## <a name="properties"></a>Freeze type properties

Freeze type is described by the following properties

Name       			| Type      | Description
--------------------|-----------|-----------
`id`      			|`long`   	| Unique identifier of freeze type.
`name`      		|`string`   | Freeze type name.
`isActive`      	|`bool`   	| `true` if freeze type is active, `false` otherwise.
`freezePeriod`      |`string`   | Freeze period. <br><strong>Possible values</strong>: <br><ul><li>Day</li><li>Month</li></ul>
`minimumInterval`   |`int`		| Minimum time interval freeze has to last (in units represented with `freezePeriod`).
`maximumIntarval`   |`int`		| Maximum time interval freeze can last (in units represented with `freezePeriod`).
`fixedFee`      	|`decimal`  | Freeze fixed fee.
`administrationFee` |`decimal`  | Freeze administration fee.
`isDeleted`      	|`bool`   	| Indicates if resource is deleted.
`timestamp`      	|`long`   	| Timestamp. Indicates when resource was last modified.


      

## List available freeze types for given contract.

    GET Contracts/FreezeTypes

Returns list of available freeze types.


### Parameters

Name         | Type   | Description
-------------|--------|--------------------
`contractId` |`long`  | **Required**. Contract identifier. Request returns freeze types available for contract identified with `conractId` parameter..


### Example request

In this example we fetch all available freeze types.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Contracts/FreezeTypes?contractId=10358	
```


### Example response

<%= headers 200 %>
<%= json(:freezetypes_response) %>

