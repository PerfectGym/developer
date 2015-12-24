---
title: Classes
---

# Classes

This API gives you read only access to list of fitness classes 
available in your gym.

{:toc}



## Overview 

Class represents fitness class conducted in your club.


## <a name="properties"></a>Class properties

Class is described by the following properties

Name            | Type                        | Description
-----|----------|------------------------------------------
`classType`     |[Class type][ClassesTypes]   | Class type.
`instructor`    |`Instructor`                 | Instructor conducting class.
`club`			|`Club`						  | Club class take place in.
`id`            |`long`                       | Unique identifier of class.
`timestamp`     |`long`                       | Timestamp of class. Indicates when class was last modified.
`isDeleted`     |`bool`                       | Indicates if class was deleted from the club schedule.
`startDate`     |`datetime`                   | Class start date and time.
`endDate`       |`datetime`                   | Class end date and time.
`attendeesCount`|`int`                        | Number of users signed up for class.
`attendeesLimit`|`int`                        | Maximum number of attendees allowed to attend class. `null` if there is no limit.




## List classes in a given timeframe

    GET Classes/GetClasses/{clubId}/{startDate}/{endDate}  

Request returns classes list.


### Path parameters

Name         | Type       | Description
-----|-------|------------|------------
`clubId`     |`long`      | Club identifier. Request returns classes that take place in club identified by `clubId`.
`startDate`  |`datetime`  | Start date. Request returns classes that starts leter then `startDate`.
`endDate`    |`datetime`  | End date. Request returns classes that ends earlier then `endtDate`.


### Example request

In this example we fetch list of all classes in club with id = `2`, that starts in december 2015

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Classes/GetClasses/2/2015-12-01/2015-12-31/
```


### Example response

<%= headers 200 %>
<%= json(:classes_response) %>



## List classes with timestamp 

    GET Classes/GetClassesWithTimestamp/{clubId}/{timestamp}

Request returns classes list.


### Path parameters

Name         | Type   | Description
-----|-------|--------|------------
`clubId`     |`long`  | Club identifier. Request returns classes that take place in club identified by `clubId`.
`timestamp`  |`long`  | Timestamp. Request returns classes with timestamp grater then `timestamp`


### Example request

In this example we fetch list of all classes in club with id = `2` and with timestamp greater then `254000`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Classes/GetClassesWithTimestamp/2/254000
```


### Example response

<%= headers 200 %>
<%= json(:classes_response) %>




[ClassesTypes]:  /api/classes/classestypes#properties
