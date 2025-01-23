import Foundation

func flightTime(departure: String, arrival: String, timeDifference: Int) {
	let departureComponents = departure.split(separator: ":").compactMap { Int($0) }
	let arrivalComponents = arrival.split(separator: ":").compactMap { Int($0) }

	var flightHours = arrivalComponents[0] - (departureComponents[0] + timeDifference)
	if flightHours < 0 {
		flightHours += 24
	}
	var flightMinutes = arrivalComponents[1] - departureComponents[1]
	if flightMinutes < 0 {
		flightHours -= 1
		flightMinutes += 60
	}

	print("\(flightHours):\(String(format: "%02d", flightMinutes))")
}

flightTime(departure: "12:00", arrival: "13:05", timeDifference: 0) // "1:05"
flightTime(departure: "12:00", arrival: "13:00", timeDifference: 0) // "1:00"
flightTime(departure: "0:00", arrival: "6:25", timeDifference: 0) // "6:25"
flightTime(departure: "1:00", arrival: "12:50", timeDifference: 1) // "10:50"
flightTime(departure: "0:55", arrival: "1:45", timeDifference: 0) // "0:50"
