bi chart
basicCreateChartDefinition

	chartScope := 'All'.

	chartDefinition := BISingleChartDefinition newFor: self session user in: self session systemRoot defaultParser.

	chartDefinition scope: (self newChartScopeFor: chartDefinition);
		distribution: (MoneyfyChartAllValuesDistribution newOn: chartDefinition);
		distributionType: (BIChartQuantityDistribution newOn: chartDefinition);
		chartType: (BIPieChart newOn: chartDefinition).