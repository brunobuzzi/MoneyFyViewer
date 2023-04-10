iterating
dataCollectionWithCategoryAndAmountForYear: year month: monthIndex
	| data rawData |

	rawData := Dictionary new.
	data := OrderedCollection new.

	self 
		convertedValuesOnYear: year month: monthIndex 
		do: [:moneyfyLine | 			
				moneyfyLine categoryAndAmountDo: [:category :amount | 
					(rawData includesKey: category) ifFalse: [rawData at: category put: 0].
					rawData at: category put: (rawData at: category) + amount]].

	rawData keysAndValuesDo: [:key : value | data add: (Array with: key with: value abs)]. 

	^data