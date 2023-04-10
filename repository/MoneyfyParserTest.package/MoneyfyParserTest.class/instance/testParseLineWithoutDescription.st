tests
testParseLineWithoutDescription
	| csv |

	csv := 'date,account,category,amount,currency,converted amount,currency,description
02/03/2021,Maestro BROU,Salario,"68,533",UYU,"1,631.085",USD,'.

	parser := MoneyfyParser parseLine: csv.

	parser parsedLineAt: 1 do: [:moneyfyLine |
		self assert: moneyfyLine valuesSize equals: 8
	].