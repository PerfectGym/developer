---
title: Clubs
---

# Clubs

Club is a summary representation of single club in your company.

{:toc}


## <a name="properties"></a>Club properties

Class is described by the following properties

Name            | Type          		| Description
----------------|-----------------------|-------------------------------------
`id`            |`long`         		| Unique identifier of class.
`timestamp`    	|`long`     			| Timestamp. Indicates when resource was last modified.
`name`          |`string`       		| Club name.
`shortName`     |`long`         		| Club short name.
`symbol`        |`long`         		| Club symbol.
`email`         |`string`   			| Club e-mail address.
`phoneNumber`   |`string`   			| Club phone number.
`longitude`     |`decimal`  			| Club latitude.
`longitude`     |`decimal`  			| Club longitude.
`timeZone`		|`string`				| Club time zone in `windows` format (for example: `Central European Standard Time`).
`openDate`		|`datetime`				| Indicates when club was opened
`address`       |[Address][Address]   	| Club address.
`type`          |`long`         		| Club type.
`isDeleted`     |`bool`         		| Indicates if resource is deleted.
`isHidden`      |`bool`					| Indicates if resource is hidden.




## List clubs with timestamp ![alt text][EM] ![alt text][UM]

    GET Clubs/Clubs

Returns paginated list of clubs available in your company.


### Parameters

Name         | Type   | Description
-----|-------|--------|------------
`timestamp`  |`long`  | Timestamp. Request returns clubs with timestamp grater then `timestamp`, defaults to `0`


### Example request

In this example we fetch list of all clubs with `timestamp` greater then `254000`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Clubs/Clubs?timestamp=254000
```


### Example response

<%= headers 200 %>
<%= json(:clubs_response) %>


[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"

[Address]: /appendix/datatypes/address