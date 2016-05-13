---
title: Freeze type details
---

# Freeze type details

Freeze type details is detaild representation of single freeze type. 

{:toc}


## <a name="properties"></a>Freeze type details properties

Freeze type details holds the same data as [Freeze type][FreezeType] plus some detailed features of a freeze type.
Only freeze type details specyfic properties are described here.


Name    		    	| Type    			| Description
------------------------|-------------------|----------------------
`freezeFee`				|`decimal`			| Freeze fee.
`availableStartDates`	|`array`			| An array of [start dates][FreezeStartDate] objects representing dates freeze can start.
`freezeMaxLength`	    |`int`			    | Maximum freeze length .



## Retrive detailed information about specyfic freeze type ![alt text][EM]

    GET Contracts/FreezeType

Returns detailed freeze type informations.


### Parameters

Name            | Type       | Description
----------------|------------|------------------------
`freezeTypeId`  |`long`      | **Required**. Freeze type identifier.
`contractId`    |`long`      | **Required**. Contract to be frozen identifier.



### Example request

In this example we fetch detaild informations about freeze type with `id` = `7`. Freeze is to be aplied to contract with `id` = `10358`.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Contracts/FreezeType?freezeTypeId=7&contractId=10358    	
```


### Example response

<%= headers 200 %>
<%= json(:freezetypedetails_response) %>



[FreezeType]: /api/contracts/freezetypes#properties
[FreezeStartDate]: /appendix/datatypes/freezestartdate

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"

