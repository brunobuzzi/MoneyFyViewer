bi
reportEvolutionAccumulatedExpensesFrom: startDate to: endDate
	| distribution catValueCollectionDict reports |

	reports := OrderedCollection new.
	catValueCollectionDict := self expensesByCategoryFrom: startDate to: endDate.

	catValueCollectionDict keysAndValuesDo: [:cat :collection | | report distribution stringKeyDistribution |
		distribution := OrderPreservingDictionary new.
		stringKeyDistribution := OrderPreservingDictionary new.
		collection do: [:moneyfyLine | (distribution includesKey: moneyfyLine date) ifFalse: [distribution at: moneyfyLine date put: 0]. 
			distribution at: moneyfyLine date put: ((distribution at: moneyfyLine date) + moneyfyLine amount abs).

		].
		distribution keysAndValuesDo: [:k :v | stringKeyDistribution at: k printString put: v].
		report := MoneyfyCategoryEvolutionDistributionReport distribution: stringKeyDistribution.
		report name: cat;
			xAxisIsDate: true;
			seriesName: cat.
		reports add: report.
	]. 

	^(MoneyfyCategoriesEvolutionDistributionReport distribution: reports) 
			canonizeXAxis;
			name: 'SPLine Category Distribution';
			description: 'Amount Evolution of Categories'; 
			startDate: startDate;
			endDate: endDate;
			yourself