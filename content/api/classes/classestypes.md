---
title: Classes types
---

# Classes types

Each fitness class has a class type assigned . Class type is for example 'Zumba', 
and a class is an instance of a class type (for example Zumba at 'Fibo' club, starting on 2015-12-21 18:00).
Class types are global accross all clubs of a company (in case company has more then 1 club).

{:toc}


## <a name="properties"></a>Class type properties

Class type is described by the following properties

Name         | Type     | Description
-----|-------|-----------------------
`id`         |`long`    | Unique identifier of class type.
`timestamp`  |`long`    | Timestamp. Indicates when resource was last modified.
`isDeleted`  |`bool`    | Indicates if resource is deleted.
`name`       |`string`  | Class type name.
`description`|`string`  | Class type description.
`photoUrl`	 |`string`	| Class type photo URL.
`iconUrl`	 |`string`	| Class type icon URL.
`rating`     |[Rating][]| Class type rating.
`ageFromMonths`	 |`int`	| Class type age restriction lower bound.
`ageToMonths`	 |`int`	| Class type age restriction upper bound.
`category`	     |[Category][Category]	    | Class type category.
`secondCategory` |[Category][Category]	| Class type second category.
`translations`   |`Array` | An array of [ClassTypeTranslation][ClassTypeTranslation] objects, lass type translations.
`attributes`     |`Array` | An array of [CustomAttribute][CustomAttribute] objects, class type custom attributes.

 

## List classes types with timestamp ![alt text][EM] ![alt text][UM]

    GET Classes/ClassesTypes

Returns paginated classes type list.


### Parameters

Name         | Type   | Description
-----|-------|--------|------------
`timestamp`  |`long`  | Timestamp. Request returns classes types with timestamp grater then `timestamp`, defaults to `0`.


### Example request

In this example we fetch list of all classes types (`timestamp` parameter defaults to `0`) 
available in a company.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Classes/ClassesTypes
```


### Example response

<%= headers 200 %>
<%= json(:classtype_response) %>

[Category]:  /api/classes/categories#properties
[Rating]:  /api/classes/ratings#properties
[ClassTypeTranslation]:  /appendix/datatypes/classtypetranslation
[CustomAttribute]:  /appendix/datatypes/customattribute

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"