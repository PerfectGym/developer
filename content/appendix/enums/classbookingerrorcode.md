---
title: Class booking error codes
layout: appendix
---

# Class booking error codes

Code            							| Type        | Description
-----|----------|----------------------------------------------------
`ClassAlreadyBooked`     					|`string`     | Class is already booked by the user.
`BookingRejected`    						|`string`     | Booking is rejected.
`BookingBlockedForUser`            			|`string`     | Booking is blocked for user. Booking can be blocked if user signed up for class and didn't show up.
`BookingInZoneNotAllowed`     				|`string`     | User membership does not allow to book classes in a specific club zone.
`BookingWithDebitNotAllowed`     			|`string`     | User has debit.
`BookingWithoutActiveContractNotAllowed`	|`string`     | User does not have an active membership.
`BookingNotAllowed`       					|`string`     | Booking for selected classes is not allowed.
`BookingToLate`								|`string`     | It is too late to book selected class.
`BookingToSoon`								|`string`     | It is to early to book selected class.
`DailyBookingLimitReached`					|`string`     | Daily club booking limit has beed exceeded.
`DailyZoneBookingLimitReached`				|`string`     | Daily club zone booking limit has been exceeded.
`UserNotAllowedToAccessClub`				|`string`     | User membership does not allow to access club during selected class.
`StandbyListLimitReached`					|`string`     | Standby list limit has beed exceeded.




