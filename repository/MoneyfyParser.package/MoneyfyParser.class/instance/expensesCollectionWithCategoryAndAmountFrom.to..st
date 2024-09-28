bi
expensesCollectionWithCategoryAndAmountFrom: startYearMonthArray to: endYearMonthArray
	| distribution rawData report startDate endDate |

	rawData := Dictionary new.
	distribution := OrderPreservingDictionary new.

	self 
		expensesValuesOnYear: startYearMonthArray month: endYearMonthArray 
		do: [:moneyfyLine | 			
				moneyfyLine categoryAndAmountDo: [:category :amount | 
					(rawData includesKey: category) ifFalse: [rawData at: category put: 0].
					rawData at: category put: (rawData at: category) + amount]].

	rawData keysAndValuesDo: [:key : value | distribution at: key put: value abs].

	"startDate := Date fromString: monthIndex printString, '/01/', year printString."
	"endDate := Date fromString: monthIndex printString, '/', startDate daysInMonth printString, '/',year printString."
	^(MoneyfyDistributionReport distribution: distribution) 
			name: 'Category Distribution';
			description: 'Amounts separated by categories'; 
			startDate: startDate;
			endDate: endDate;
			yourself