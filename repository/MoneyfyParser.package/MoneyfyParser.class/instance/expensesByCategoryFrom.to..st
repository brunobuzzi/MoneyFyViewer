bi
expensesByCategoryFrom: startDate to: endDate
	| rawData orderedData |

	rawData := Dictionary new.

	self convertedValuesSelect: [:moneyfyLine | moneyfyLine date >= startDate and: [moneyfyLine date <= endDate and: [moneyfyLine amountIsNegative]]] 
		do: [:moneyfyLine | 
			moneyfyLine categoryAndAmountDo: [:category :amount |  
				(rawData includesKey: category) ifFalse: [rawData at: category put: OrderedCollection new].
				(rawData at: category) add: moneyfyLine.
			].
		].

	orderedData := Dictionary new.
	rawData keysAndValuesDo: [:cat :collection | 
		orderedData at: cat put: (collection asSortedCollection: [:a :b | a date <= b date]).
	].
 
	^orderedData