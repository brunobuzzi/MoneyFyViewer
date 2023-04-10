iterating
convertedValuesOnDate: aDate do: aBlock

	self 
		convertedValuesSelect: [:moneyfyLine | moneyfyLine date = aDate]
		do: aBlock