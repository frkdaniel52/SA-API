%dw 1.0
%output application/json
%namespace ns0 http://soap.training.mulesoft.com/
---
payload.ns0#findFlightResponse.*return map ((return , indexOfReturn) -> {
	airline: return.airlineName,
	code: return.code,
	date: return.departureDate,
	destination: return.destination,
	seats: return.emptySeats as :string,
	origin: return.origin,
	plane: return.planeType,
	price: return.price as :string
})