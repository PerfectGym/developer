---
title: Club access rule
layout: appendix
---

# Club access rule

Represents a club access rule.


## Club access rule properties

Club access rule is described by the following properties


Name            	| Type      | Description
--------------------|-----------|-----------
`id`     			|`long`     | Unique access rule identifier.
`timestamp`    		|`long`     | Timestamp of access rule. Indicates when access rule was last modified..
`name`    			|`string`   | Access rule name.
`description`   	|`string`   | Access rule description.
`allowedClubs`   	|`array`    | An array of [Club][Club] objects, each representing club membership holder has access to.
`allowedZoneTypes`  |`array`    | An array of [Club Zone Types][ClubZoneType] objects, each representing club zone type membership holder has access to.


[Club]: /api/clubs/clubs#properties
[ClubZoneType]: /appendix/datatypes/zonetype
