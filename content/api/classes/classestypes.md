---
title: Classes types
---

# Classes types

This API gives you read only access to list classes types in your gym.

{:toc}



## Overview

Each fitness class has a class type assigned . Class type is for example 'Zumba', 
and a class is an instance of a class type (for example Zumba at 'Fibo' club, starting on 2015-12-21 18:00).
Class types are global accross all clubs of a company (in case company has more then 1 club).


## <a name="properties"></a>Class type properties

Class type is described by the following properties

Name         | Type     | Description
-----|-------|-----------------------
`id`         |`long`    | Unique identifier of class type.
`timestamp`  |`long`    | Timestamp of class type. Indicates when class type was last modified.
`name`       |`string`  | Class type name.
`description`|`string`  | Class type description.
`rating`     |[Rating][]| Class type rating.



## List classes types with timestamp

    GET Classes/GetClassesTypes/{timestamp}

Request returns classes type list.


### Path parameters

Name         | Type   | Description
-----|-------|--------|------------
`timestamp`  |`long`  | Timestamp. Request returns classes types with timestamp grater then `timestamp`


### Example request

In this example we fetch list of all classes types (`timestamp` parameter set to `0`) 
available in a company.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Classes/GetClassesTypes/0
```


### Example response

<%= headers 200 %>
<%= json(:classtype_response) %>


[Rating]:  /api/classes/ratings#properties