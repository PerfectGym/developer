---
title: Measurement sets
---

# Measurement sets

Measurement set represents a list of user's fitness measurements taken in a given moment.

{:toc}


## <a name="properties"></a>Measurement set properties

Measurement set is described by the following properties

Name            | Type          		| Description
----------------|-----------------------|-------------------------------------
`id`            |`long`         		| Unique identifier of a measurement set.
`timestamp`    	|`long`     			| Timestamp. Indicates when resource was last modified.
`addDate`		|`datetime`				| Date measurements included in a set were taken.
`measurements`  |`array`   				| An array of [Measurement][Measurement] objects, each representing single fitness measurement.
`isDeleted`     |`bool`         		| Indicates if resource is deleted.




## List user's measurement sets with timestamp ![alt text][EM] ![alt text][UM]

    GET Measurements/Measurements

Returns paginated list of user's measurement sets.


### Employee mode parameters

Name         | Type   | Description
-------------|--------|--------------------
`timestamp`  |`long`  | Timestamp. Request returns measurement sets with timestamp grater then `timestamp`, defaults to `0`


### User mode parameters

Name         | Type   | Description
-------------|--------|--------------------
`userId`	 |`long`  | **Required**. User identifier. Request returns measurement sets for user identified with `userId`.
`timestamp`  |`long`  | Timestamp. Request returns measurement sets with timestamp grater then `timestamp`, defaults to `0`


### Example request

In this example we fetch list of user's fitness measurements with `timestamp` greater then `254000`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Measurements/Measurements?timestamp=254000
```


### Example response

<%= headers 200 %>
<%= json(:measurementsets_response) %>

[Measurement]: /appendix/datatypes/measurement

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"
