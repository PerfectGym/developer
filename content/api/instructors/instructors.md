---
title: Instructors
---

# Instructors

Instructor is a summary representation of a fitness class instructor.

{:toc}


## <a name="properties"></a>Instructor properties

Instructor is described by the following properties

Name            | Type                        | Description
-----|----------|------------------------------------------
`id`            |`long`                       | Unique identifier of instructor.
`timestamp`    	|`long`     				  | Timestamp. Indicates when resource was last modified.
`firstName`     |`string`                     | Instructor's name.
`lastName`      |`string`                     | Instructor's last name.
`displayName`   |`string`                     | Instructor's display name.
`email`         |`string`                     | Instructor's email.
`sex`           |`string`                     | Instructor's sex. <br><strong>Possible values</strong>: <br><ul><li>Male</li><li>Female</li></ul>
`rating`        |[Rating][]					  | Instructor's rating.
`isActive`      |`bool`                       | Indicates if instructor is active.
`isDeleted`     |`bool`                       | Indicates if resource is deleted.



## List instructors with timestamp 

    GET Instructors/Instructors

Returns paginated list of instructors available in your company.


### Parameters

Name         | Type   | Description
-----|-------|--------|------------
`timestamp`  |`long`  | Timestamp. Request returns instructors with timestamp grater then `timestamp`, defaults to `0`


### Example request

In this example we fetch list of all instructors with `timestamp` greater then `254000`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Instructors/Instructors?timestamp=254000
```


### Example response

<%= headers 200 %>
<%= json(:instructors_response) %>


 [Rating]:  /Api/classes/ratings#properties