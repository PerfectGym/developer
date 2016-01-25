---
title: Zone
layout: appendix
---

# Zone

Represents a distinct area in your club.


## Zone properties

Zone is described by the following properties


Name            | Type      | Description
-----|----------|----------------------
`id`            |`long`     | Unique identifier of zone.
`timestamp`    	|`long`     | Timestamp. Indicates when resource was last modified.
`clubZoneTypeId`|`long`		| [Club zone type][ClubZoneType] identifier.
`parentId`     	|`string`   | Unique identifier of zone's parrent zone.
`name`    		|`string`   | Zone's name.
`description`   |`string`   | Zone's description.
`isDeleted`     |`bool`     | Indicates if resource is deleted.



[ClubZoneType]: /appendix/datatypes/zonetype
