iterating
convertedValuesOnYear: year month: monthIndex do: aBlock

	self 
		convertedValuesSelect: [:moneyfyLine | moneyfyLine date year = year and: [moneyfyLine date monthIndex = monthIndex]]
		do: aBlock