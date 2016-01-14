---
title: Responses
---

# Responses

Responses contains resources list or individual resources for GET requests.
For POST requests, individual resource that request operates on is returned. 

Each API response is wrapped in a standard structure called the envelope, 
which holds the results of the API call, plus the metadata related to the request.
In case of logical errors, error detailes are enclosed in error envelope.


## 	Response Envelope

Response envelope encloses resources list or individual resources returned by PerfectGym API.


### Response envelope properties

Attribute Name | Description
---------------|-----------|
`elements`     | A collection of objects the payload carries. In case of individual resource, `elements` contain only one object.


### Example

<%= headers 200 %>
<%= json(:classtype_response) %>


## Error Response Envelope

Error resoinse envelope encloses information about logical errors that occured during API calls.


### Error envelope properties

Attribute Name | Description
---------------|-----------|
`errors` 	   | An array of [Error][Error] objects, each representing logical error that occured during API call.


### Example

<%= headers 200 %>
<%= json(:bookclass_error_response) %>


## Summary Representations

When you fetch a list of resources, the response includes a _subset_ of the
attributes for that resource. This is the "summary" representation of the
resource. (Some attributes are computationally expensive for the API to provide.
For performance reasons, the summary representation excludes those attributes.
To obtain those attributes, fetch the "detailed" representation.)

### Example
When you get a list of classes, you get the summary
representation of each class type. Here, we fetch the list of classes
in a given club:

    GET Classes/Classes/{clubId}



## Detailed Representations

When you fetch an individual resource, the response typically includes _all_
attributes for that resource. This is the "detailed" representation of the
resource.

### Example
When you get an individual class, you get the detailed
representation of the class:

    GET Classes/Class/{classId}

The documentation provides an example response for each API method. The example
response illustrates all attributes that are returned by that method.



[Error]:  /appendix/error