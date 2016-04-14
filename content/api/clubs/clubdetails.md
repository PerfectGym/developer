---
title: Club details
---

# Club details

Club details is detaild representation of single club in your company. 

{:toc}


## Club details properties

Club details holds the same data as [Club][ClubProperties] plus some detailed features of a club.
Only club details specyfic properties are described here.


Name            		| Type    | Description
-----|------------------|----------------------
`displayName`           |`string`   		  | Club display name.
`description`     		|`string`   		  | Club detailed description.
`languageCode`    		|`string`   		  | Language identifier club information are translated to (for example `EN`, `DE` etc.)
`address`               |[Address][Address]   | Club address.
`longitude`             |`decimal`  		  | Club latitude.
`longitude`             |`decimal`  		  | Club longitude.
`email`                 |`string`   		  | Club e-mail address.
`phoneNumber`           |`string`   		  | Club phone number.
`equipment`             |`array`    		  | An array of [Equipment][Equipment] objects, each representing equipment type available in club.
`facilities`            |`array`    		  | An array of [Facility][Facility] objects, each representing facility available in club.
`openingHours`          |`array`    		  | An array of [Opening hours][OpeningHours] objects, each representing club opening hours in a given week day.
`urls`                  |`array`    		  | An array of [Url][Url] objects, each representing an url to your club's social service site.
`contacts`              |`array`    		  | An array of [Contact][Contact] objects, each representing an individual or a departament in your club, user can reach using e-mail or phone.
`zones`                 |`array`    		  | An array of [Zone][Zone] objects, each representing a distinct area in club.



## <a name="clubdetails"></a>Retrive detailed information about specyfic club.

    GET Clubs/Club

Returns detailed club informations.


### Parameters

Name            | Type       | Description
----------------|------------|------------------------
`clubId`        |`long`      | **Required**. Club identifier.
`languageCode`  |`string`    | Language identifier club information should be translated to (for example `EN`, `DE` etc.).



### Example request

In this example we fetch club with `id` = `16` detailed information. Information will be returned in club's language (`languageCode` parameter is ommited).

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Clubs/Club?clubId=16     	
```


### Example response

<%= headers 200 %>
<%= json(:clubdetails_response) %>



[Club]: /Api/clubs/clubs
[ClubProperties]: /Api/clubs/clubs#properties 
[Contact]: /appendix/datatypes/contact
[Equipment]: /appendix/datatypes/equipment
[Facility]: /appendix/datatypes/facility
[OpeningHours]: /appendix/datatypes/openinghours
[Url]: /appendix/datatypes/url
[Zone]: /appendix/datatypes/zone
[Address]: /appendix/datatypes/address
