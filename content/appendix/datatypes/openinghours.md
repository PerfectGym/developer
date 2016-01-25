---
title: Opening hours
layout: appendix
---

# Opening hours

Represents a timeframe your club is opened on a given day.


## Opening hours properties

Opening hours are described by the following properties


Name            	 | Type      | Description
---------------------|-----------|-----------
`id`            	 |`long`     | Unique identifier of opening hours.
`timestamp` 	   	 |`long`     | Timestamp. Indicates when resource was last modified.
`isClosed`     		 |`bool` 	 | Indicates if club is closed on a given week day.
`dayOfWeekOrHoliday` |`string`   | Day of week given object refers to. <br><strong>Possible values</strong>: <br><ul><li>Monday</li><li>Tuesday</li><li>Wednesday</li><li>Thursday</li><li>Friday</li><li>Saturday</li><li>Sunday</li><li>Holidays</li></ul>
`openFrom`         	 |`string`   | Opening hour.
`openUntil`   		 |`string`   | Closing hour.
`isDeleted`     	 |`bool`     | Indicates if resource is deleted.


