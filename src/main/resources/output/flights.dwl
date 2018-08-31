%dw 1.0
%output application/json
---
payload.flights map ((flight , indexOfFlight) -> {
	airline: flight.airlineName,
	code: flight.code,
	date: flight.departureDate,
	destination: flight.destination,
	seats: flight.emptySeats as :string,
	origin: flight.origin,
	plane: flight.planeType,
	price: flight.price as :string

})