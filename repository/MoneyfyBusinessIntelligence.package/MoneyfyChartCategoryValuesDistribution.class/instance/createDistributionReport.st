other
createDistributionReport
	| report |

	report := self systemRoot reportEvolutionAccumulatedExpensesFrom: self startDate to: self endDate.

	report name: ('Category Value Evolution' translateFor: self user);
		description: (('Total: ' translateFor: self user), report getTotalValue printString);
		xTitle: ('Time' translateFor: self user);
		yTitle: ('Summatory' translateFor: self user);
		xAxisIsDate: true. 

	^report