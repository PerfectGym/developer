---
title: Club details
---

# Club details

This API gives you read only access to detailed information about clubs
available in your company.

{:toc}



## Overview 

Club details is detaild representation of single club in your company. Club details share 
its data with [Club][Club], and holds additional detailed properties.


## Club details properties

Club details holds the same data as [Club][ClubProperties] plus some detailed features of a club.
Only club details specyfic properties are described here.


Name            		| Type    | Description
-----|------------------|----------------------
`displayName`           |`string`   | Club's display name.
`description`     		|`string`   | Club's detailed description.
`languageCode`    		|`string`   | Language identifier club information are translated to (for example `EN`, `DE` etc.)
`street`                |`string`   | Club's street name.
`city`                  |`string`   | Club's city name.
`postalCode`            |`string`   | Club's zip code or equivalent.
`country`               |`string`   | Club's country name.
`longitude`             |`decimal`  | Club's latitude.
`longitude`             |`decimal`  | Club's longitude.
`email`                 |`string`   | Club's e-mail address.
`phoneNumber`           |`string`   | Club's phone number.
`equipment`             |`array`    | An array of [Equipment][Equipment] objects, each representing equipment type available in club.
`facilities`            |`array`    | An array of [Facility][Facility] objects, each representing facility available in club.
`openingHours`          |`array`    | An array of [Opening hours][OpeningHours] objects, each representing club opening hours in a given week day.
`urls`                  |`array`    | An array of [Url][Url] objects, each representing an url to your club's social service site.
`contacts`              |`array`    | An array of [Contact][Contact] objects, each representing an individual or a departament in your club, user can reach using e-mail or phone.
`zones`                 |`array`    | An array of [Zone][Zone] objects, each representing a distinct area in club.



## Get detailed information about specyfic club.

    GET Clubs/GetClubDetails/{clubId}/{languageCode}  

Request returns detailed club informations.


### Path parameters

Name            | Type       | Description
-----|----------|------------|------------
`clubId`        |`long`      | Club identifier.
`languageCode`  |`string`    | Optional. Language identifier club information should be translated to (for example `EN`, `DE` etc.).



### Example request

In this example we fetch club with id = `16` detailed information. Information will be returned in club's language (`languageCode` parameter is ommited).

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Clubs/GetClubDetails/16     	
```


### Example response

<%= headers 200 %>
<%= json(:clubdetails_response) %>



[Club]: /api/clubs/clubs
[ClubProperties]: /api/clubs/clubs#properties 
[Contact]: /api/clubs/contact
[Equipment]: /api/clubs/equipment
[Facility]: /api/clubs/facility
[OpeningHours]: /api/clubs/openinghours
[Url]: /api/clubs/url
[Zone]: /api/clubs/zone
