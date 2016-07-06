---
title: Classes types
---

# Classes categories

Each fitness class is of certain class type, and each class type belongs to a certain classes category.

{:toc}


## <a name="properties"></a>Class category properties

Class category is described by the following properties

Name         | Type     | Description
-----|-------|-----------------------
`id`         |`long`    | Unique identifier of class category.
`timestamp`  |`long`    | Timestamp. Indicates when resource was last modified.
`isDeleted`  |`bool`    | Indicates if resource is deleted.
`name`       |`string`  | Class category name.
`description`|`string`  | Class category description.
`imageUrl`   |`string`  | Class category image.
`iconUrl`	 |`string`	| Class type icon URL.
`classTypes` |`array`   | Classes types in this category.
`isProductRequiredForBooking` |`string`  | Indicates if classes of this category can be paid for with products.

## List classes categories with timestamp ![alt text][EM] ![alt text][UM]

    GET Classes/Categories

Returns paginated classes categories list.


### Parameters

Name         | Type   | Description
-----|-------|--------|------------
`timestamp`  |`long`  | Timestamp. Request returns classes categories with timestamp grater then `timestamp`, defaults to `0`.


### Example request

In this example we fetch list of all classes categories (`timestamp` parameter defaults to `0`) 
available in a company.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Classes/Categories
```


### Example response

<%= headers 200 %>
<%= json(:CLASSCATEGORY_RESPONSE) %>


[Rating]:  /api/classes/ratings#properties

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"