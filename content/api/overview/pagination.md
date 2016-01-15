---
title: Pagination
---

# Pagination

PerfectGym API endpoint that returns list of resources usualy use pagination. 

{:toc}


## Overview

For pagination API uses to distinct techniques:
- `timestamp` query string parameter 
- `page` query string parameter

Page numbering is **1-based**, page size is 100.

Each API endpoint that returns paginated result is marked as paginated in endpoint description. 
Selected pagination method is described alongside endpoint parameters description.


## <a name="timestamp"></a>Pagination using `timestamp` query string parameter

Requests with timestamp query string parameter return list of resources added or changed after point in time represented
by `timestamp` value. Result is ordered by `timestamp` ascending and is paged with page size of 100.

To get next page, use last element's `timestamp` in subsequent request. 

To get all elements iterate with `timestamp` parameter untill you get result with less then 100 elements.


### Example

In this example we fetch list of available in club with id = `2` classes. 
_(Several element properties in JSON response were ommited for clarity)_


First page, `timestamp` parameter is equal `0`. It means that we fetch all elements, 
regardless of time they were last modified.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Classes/Classes?clubId=2&timestamp=0     	
```

<%= headers 200 %>
<%= json(:classes_first_page_response) %>


Second page, `timestamp` parameter of value `254718` is provided. It means that we fetch all elements with 
`timestamp` greater then `254718` (value of last element's timestamp` in previous request).

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Classes/Classes?clubId=2&timestamp=254718     	
```

<%= headers 200 %>
<%= json(:classes_second_page_response) %>



## <a name="page"></a>Pagination using `page` query string parameter

We use `page` query string parameter to choose a page. `page` parameter is always optional. 
The default page is the first one, so if you ommit `page` parameter, API will return first page.

To get all elements iterate with `page` parameter untill you get result with less then 100 elements.


### Example
In this example we fetch list of available in club with id = `2` classes, that starts in december 2015.


First page (`page` parameter is ommited, so it defaults to `1`)

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Classes/Classes?
          clubId=2&
     	startDate=2015-12-01T00:00:00&
     	endDate=2015-12-31T23:59:59
```


Second page (`page` parameter of value `2` is provided)

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Classes/Classes/?
          clubId=2&
     	startDate=2015-12-01T00:00:00&
     	endDate=2015-12-31T23:59:59&
     	page=2
```
