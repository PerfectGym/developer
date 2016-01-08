---
title: Responses
---

# Responses

Each API response is wrapped in a standard structure called the envelope, 
which holds the results of the API call, plus the metadata related to the request.


## GET Response Envelope

GET responses contains resources list or individual resources. 


### Envelope

Attribute Name | Description
---------------|-----------|
`elements`     | A collection of objects the payload carries. In case of individual resource, `elements` contain only one object.


### Example

<%= headers 200 %>
<%= json(:classtype_response) %>


## POST Response Envelope

POST request are used to create / update elements or invoke actions.


### Envelope

Attribute Name | Description
-----------|-----------|
`success` | `true` if action completed successfuly, `false` otherwise.
`details` | Information containing request result details.


### Example

<%= headers 200 %>
<%= json(:bookclass_response) %>


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
