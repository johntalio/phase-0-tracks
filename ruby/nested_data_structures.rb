skyscraper = {
	roof: [],
	penthouse: {
		floor_1: "Living Area",
		floor_2: "Gourmet Kitchen",
		floor_3: "Swimming Pool",
		floor_4: "Movie Theater",
		floor_5: "Master Bedroom Suite",
	},
	offices: {
		office_info: {
			total_offices: 5,
			number_of_employees: 1000,
			business_owners: [
				"Linda",
				"Thomas",
				"Tim",
				"Lucy",
				"Lauren"
			],
		},
	},
	ground_floor: {
		lobby: {
			guest_info: {
				names: [
					"Paul",
					"Steve",
					"Cindy",
					"Lou",
					"Nancy"
				],
				room_numbers: [
					502,
					202,
					16,
					65,
					300
				],
			},
		},
	},
}

puts skyscraper[:ground_floor][:lobby][:guest_info][:names][2]
puts skyscraper[:ground_floor][:lobby][:guest_info][:room_numbers][4]
puts skyscraper[:offices][:office_info][:number_of_employees]
puts skyscraper[:offices][:office_info][:business_owners][3]
puts skyscraper[:penthouse][:floor_5]
puts skyscraper[:penthouse][:floor_3]
puts skyscraper[:roof].push("flag")
puts skyscraper[:roof][0] = "spiderman"
puts skyscraper[:roof]