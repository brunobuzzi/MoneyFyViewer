bi
reportEvolutionAccumulatedExpensesFrom: startDate to: endDate
	| distribution catValueCollectionDict reports |

	reports := OrderedCollection new.
	catValueCollectionDict := self expensesByCategoryFrom: startDate to: endDate.

	catValueCollectionDict keysAndValuesDo: [:cat :collection | | report distribution |
		distribution := OrderPreservingDictionary new.
		collection do: [:moneyfyLine | (distribution includesKey: moneyfyLine date) ifFalse: [distribution at: moneyfyLine date put: 0]. 
			distribution at: moneyfyLine date put: ((distribution at: moneyfyLine date) + moneyfyLine amount abs).

		].
		reports add: (MoneyfyCategoryEvolutionDistributionReport distribution: distribution).
	]. 

	^(MoneyfyCategoryEvolutionDistributionReport distribution: reports) 
			name: 'SPLine Category Distribution';
			description: 'Amount Evolution of Categories'; 
			startDate: startDate;
			endDate: endDate;
			yourself