---
title: Requests
---

# Requests

This describes PerfectGym API requests basics.

{:toc}



## Parameters

GET requests parameters are specified as path segments.    

POST requests parameters are specified as path segment (or JSON body with Content-Type of 'application-json'
when explicitly required).


**Example**: In this example, the `1` and `0` values are provided for the `clubId`
and `timestamp` parameters in the path.

    GET Classes/GetClasses/{clubId}/{timestamp}
``` command-line
$ curl -i https://yourcompany.perfectgym.com/api/Classes/GetClasses/1/0
```



## Timestamp parameter

Requests with timestamp parameter returns list of resources added or changed after point in time represented
by `timestamp` value. Result is ordered by `timestamp` ascending.

**Example**: In this example we fetch list of classes from the club with `id` of `1` and with `timestamp` 
value greater then `654321`.

	GET Classes/GetClasses/{clubId}/{timestamp}
``` command-line
$ curl -i https://yourcompany.perfectgym.com/api/Classes/GetClasses/1/654321
```
