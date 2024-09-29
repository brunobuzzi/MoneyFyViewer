bi chart
charDefinitionDistributionClass

	^self isChartScopeAll 
	ifTrue: [MoneyfyChartAllValuesDistribution]
	ifFalse: [MoneyfyChartCategoryValuesDistribution].