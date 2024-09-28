render
renderByCategoryChartOptionsOn: html


	chartScope := 'All'.

	chartDefinition := BISingleChartDefinition newFor: self session user in: self session systemRoot defaultParser.

	chartDefinition scope: (self newChartScopeFor: chartDefinition);
		distribution: (MoneyfyChartCategoryValuesDistribution newOn: chartDefinition);
		distributionType: (BIChartQuantityDistribution newOn: chartDefinition);
		chartType: (BISplineChart newOn: chartDefinition).