# I was going to change to the names to something
# shorter/ more fluid, but decided to keep them so you 
# know what the information is without a key or guide


most_populated_states = {
	california: {
		population: 38_802_500,
		most_populated_cities: [ 
			"Los Angeles",
			"San Diego",
			"San Jose"
		],
		population_of_cities: { 
			los_angeles: 4_000_000,
			san_diego: 1_300_000,
			san_jose: 946_000
		}
	},
	texas: {
		population: 27_000_000,
		most_populated_cities: [
			"Houston",
			"San Antonio",
			"Dallas"
		],
		population_of_cities: {
			houston: 2_300_000,
			san_antonio: 1_500_000,
			dallas: 1_300_000
		}
	},
	florida: {
		population: 19_900_000,
		most_populated_cities: [
			"Jacksonville",
			"Miami",
			"Tampa"
		],
		population_of_cities: {
			jacksonville: 843_000,
			miami: 409_000,
			tampa: 353_000
		}
	},
	new_york: {
		population: 19_750_000,
		most_populated_cities: [
			"New York City",
			"Buffalo",
			"Rochester"
		],
		population_of_cities: {
			new_york_city: 8_500_000,
			buffalo: 261_000,
			rochester: 211_000
		}
	},
	illinois: {
		population: 13_000_000,
		most_populated_cities: [
			"Chicago",
			"Aurora",
			"Rockford"
		],
		population_of_cities: {
			chicago: 2_700_000,
			aurora: 200_000,
			rockford: 153_000
		}
	}
}

p most_populated_states[:california]
p most_populated_states[:texas][:population]
p most_populated_states[:new_york][:most_populated_cities]
p most_populated_states[:illinois][:population_of_cities][:chicago]
