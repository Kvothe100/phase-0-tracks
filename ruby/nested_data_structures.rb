highway = {
	car_1: {
		driver: 'Steve Day',
		driver_info: {
			age: 43,
			speeding_tickets: 4
		},
		passengers:[
			"Jamal Sleeve", 
			"Liza Gordon"
		]
	},
	car_2: {
		driver: 'Tim Buck II',
		driver_info: {
			age: 17,
			speeding_tickets: 0
		},
		passengers:[
			"Leeroy Jenkins"
		]
	},
	car_3: {
		driver: 'Adam Frill',
		driver_info:{
			age: 29,
			speeding_tickets: 12
		},
		passengers:[
			"Maggie Frill", 
			"Jimmy Frill"
		]
	},
	car_4: {
		driver: 'Frodo Baggins',
		driver_info: {
			age: 80,
			speeding_tickets: 31
		},
		passengers:[
			"Sam", 
			"Pippin", 
			"Mary"
		]
	},
	car_5: {
		driver: 'Harry Lawrence',
		driver_info: {
			age: 20,
			speeding_tickets: 1
		},
		passengers:[
		]
	}
}
highway[:car_5][:passengers].push("Chris Dunn")
highway[:car_3][:driver_info][1] = 13
highway[:car_4][:passengers].reverse
highway[:car_1][:driver]