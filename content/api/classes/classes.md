---
title: Classes
---

# Classes

Class represents fitness class conducted in your club.

{:toc}


## <a name="properties"></a>Class properties

Class is described by the following properties

Name            | Type                        | Description
----------------|-----------------------------|------------------------------------------
`classType`     |[Class type][ClassesType]    | Class type.
`instructor`    |[Instructor][Instructor]     | Instructor conducting class.
`club`			|[Club][Club]				  | Club class take place in.
`startDate`     |`datetime`                   | Class start date and time.
`endDate`       |`datetime`                   | Class end date and time.
`attendeesCount`|`int`                        | Number of users signed up for class.
`attendeesLimit`|`int`                        | Maximum number of attendees allowed to attend class. `null` if there is no limit.
`clubZone`      |`string`					  | Name of club zone.
`clubZoneMapUrl`|`string`					  | Url to club zone map if defined, otherwise empty.
`colorRGB`      |`string`                     | Representing the color set for class.
`allowBookSeatNumber`|`bool` 				  | Is it allows to book a specific seat number.
`id`            |`long`                       | Unique identifier of class.
`timestamp`     |`long`                       | Timestamp. Indicates when resource was last modified.
`isDeleted`     |`bool`                       | Indicates if resource is deleted.




## List classes in a given timeframe ![alt text][EM] ![alt text][UM]

    GET Classes/Classes

Returns paginated classes list.


### Parameters

Name         | Type       | Description
-------------|------------|------------
`clubId`     |`long`      | **Required**. Club identifier. Request returns classes that take place in club identified by `clubId`.
`startDate`  |`datetime`  | **Required**. Start date. Request returns classes that starts leter then `startDate`.
`endDate`    |`datetime`  | **Required**. End date. Request returns classes that ends earlier then `endtDate`.
`page`       |`int`       | Page number, defaults to `1`.


### Example request

In this example we fetch first 100 classes in club with `id` = `2`, that starts in december 2015

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Classes/Classes
        ?clubId=2
        &startDate=2015-12-01T00:00:00
        &endDate=2015-12-31T23:59:59
```


### Example response

<%= headers 200 %>
<%= json(:classes_response) %>



## List classes with timestamp ![alt text][EM] ![alt text][UM]

    GET Classes/Classes

Returns paginated classes list.


### Parameters

Name         | Type   | Description
-----|-------|--------|------------
`clubId`     |`long`  | **Required**. Club identifier. Request returns classes that take place in club identified by `clubId`.
`timestamp`  |`long`  | Timestamp. Request returns classes with timestamp grater then `timestamp`, defaults to `0`.


### Example request

In this example we fetch list of all classes in club with `id` = `2` and with timestamp greater then `254000`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Classes/Classes
        ?clubId=2
        &timestamp=254000
```


### Example response

<%= headers 200 %>
<%= json(:classes_response) %>


## Set up presence for a booked user ![alt text][EM] 

    POST Classes/UserPresence


### Parameters

Name         | Type       | Description
-------------|------------|------------
`classId`    |`long`      | **Required**. Class identifier.
`userId`     |`long`      | **Required**. User identifier.
`isPresent`  |`boolean`   | **Required**. Indicates presence in class



### Example request

In this example, we set the user's presence with the identifier `25` for the class with the identifier` 6`

``` command-line
curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "classId": 6,
	    "userId": 25,
		"isPresent": true	      	    
	}' 
	http://yoursubdomain.perfectgym.com/Api/Classes/UserPresence
```


[ClassesType]:  /api/classes/classestypes#properties
[Instructor]:  /api/instructors/instructors#properties
[Club]:  /api/clubs/clubs#properties

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"
