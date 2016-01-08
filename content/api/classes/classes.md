---
title: Classes
---

# Classes

Class represents fitness class conducted in your club.


## <a name="properties"></a>Class properties

Class is described by the following properties

Name            | Type                        | Description
-----|----------|------------------------------------------
`classType`     |[Class type][ClassesType]    | Class type.
`instructor`    |[Instructor][Instructor]     | Instructor conducting class.
`club`			|[Club][Club]				  | Club class take place in.
`id`            |`long`                       | Unique identifier of class.
`timestamp`     |`long`                       | Timestamp of class. Indicates when class was last modified.
`isDeleted`     |`bool`                       | Indicates if class was deleted from the club schedule.
`startDate`     |`datetime`                   | Class start date and time.
`endDate`       |`datetime`                   | Class end date and time.
`attendeesCount`|`int`                        | Number of users signed up for class.
`attendeesLimit`|`int`                        | Maximum number of attendees allowed to attend class. `null` if there is no limit.




## List classes in a given timeframe

    GET Classes/Classes/{clubId} 

Returns paginated classes list.


### Path parameters

Name         | Type       | Description
-----|-------|------------|------------
`clubId`     |`long`      | Club identifier. Request returns classes that take place in club identified by `clubId`.


### Query string parameters

Name         | Type       | Description
-----|-------|------------|------------
`startDate`  |`datetime`  | **Required**. Start date. Request returns classes that starts leter then `startDate`.
`endDate`    |`datetime`  | **Required**. End date. Request returns classes that ends earlier then `endtDate`.
`page`       |`int`       | Optional. Page number, defaults to `1`.


### Example request

In this example we fetch first 100 classes in club with id = `2`, that starts in december 2015

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Classes/Classes/2?
     	startDate=2015-12-01T00:00:00&
     	endDate=2015-12-31T23:59:59
```


### Example response

<%= headers 200 %>
<%= json(:classes_response) %>



## List classes with timestamp 

    GET Classes/Classes/{clubId}

Returns paginated classes list.


### Path parameters

Name         | Type   | Description
-----|-------|--------|------------
`clubId`     |`long`  | Club identifier. Request returns classes that take place in club identified by `clubId`.


### Query string parameters

Name         | Type   | Description
-----|-------|--------|------------
`timestamp`  |`long`  | Timestamp. Request returns classes with timestamp grater then `timestamp`, defaults to `0`.


### Example request

In this example we fetch list of all classes in club with id = `2` and with timestamp greater then `254000`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Classes/Classes/2?timestamp=254000
```


### Example response

<%= headers 200 %>
<%= json(:classes_response) %>




[ClassesType]:  /api/classes/classestypes#properties
[Instructor]:  /api/instructors/instructors#properties
[Club]:  /api/clubs/clubs#properties
