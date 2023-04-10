tests
testParseLineDescriptionWithCommas
	| csv |

	csv := 'date,account,category,amount,currency,converted amount,currency,description
17/07/2021,VISA Santander,Comida Pedidos,-35,USD,-35,USD,"Khalua, Solanas, Punta del Este"'.

	parser := MoneyfyParser parseLine: csv.

	parser parsedLineAt: 1 do: [:moneyfyLine |
		self assert: moneyfyLine valuesSize equals: 8
	].