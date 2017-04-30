murica = {
	california: {
		population: 38_802_500,
		cities: { 
			los_angeles: 4_000_000,
			san_diego: 1_300_000,
			san_jose: 946_000
		}
	},
	texas: {
		population: 27_000_000,
		cities: {
			houston: 2_300_000,
			san_antonio: 1_500_000,
			dallas: 1_300_000
		}
	},
	florida: {
		population: 19_900_000,
		cities: {
			jacksonville: 843_000,
			miami: 409_000,
			tampa: 353_000
		}
	},
	new_york: {
		population: 19_750_000,
		cities: {
			new_york_city: 8_500_000,
			buffalo: 261_000,
			rochester: 211_000
		}
	},
	illinois: {
		population: 13_000_000,
		cities: {
			chicago: 2_700_000,
			aurora: 200_000,
			rockford: 153_000
		}
	}
}

p murica[:new_york][:cities][:new_york_city]
p murica[:texas][:population]
p murica[:illinois]