bi
expensesValuesOnYear: year month: monthIndex do: aBlock

	self 
		convertedValuesSelect: [:moneyfyLine | moneyfyLine date year = year and: [moneyfyLine date monthIndex = monthIndex and:[moneyfyLine amountIsNegative]]]
		do: aBlock