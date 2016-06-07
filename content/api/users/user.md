---
title: Users
---

# Users

User is a summary representation of single club member in your gym.
 

{:toc}


## <a name="properties"></a>User properties

User is described by the following properties

Name            				| Type      				| Description
--------------------------------|---------------------------|----------------------
`id`            				|`long`     				| Unique identifier of user.
`timestamp`    					|`long`     				| Timestamp. Indicates when resource was last modified.
`firstName`     				|`string`   				| User first name.
`lastName`        				|`string`   				| User last name.
`photoUrl`						|`string`					| User photo URL.
`coverPhotoUrl`					|`string`					| Cover photo URL.
`presentInClub`                 |`bool`                     | `true` if user is currently present in club, `false` otherwise.
`sex`          					|`string`   				| User sex. <br><strong>Possible values</strong>: <br><ul><li>Male</li><li>Female</li></ul>
`isDeleted`     				|`bool`                 	| Indicates if resource is deleted.



