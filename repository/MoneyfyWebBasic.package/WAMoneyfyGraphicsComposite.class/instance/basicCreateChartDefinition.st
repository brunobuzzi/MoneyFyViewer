bi chart
basicCreateChartDefinition

	chartDefinition := BISingleChartDefinition newFor: self session user in: self session systemRoot defaultParser.

	chartDefinition scope: (self newChartScopeFor: chartDefinition);
		distribution: (self charDefinitionDistributionClass newOn: chartDefinition);
		distributionType: (BIChartQuantityDistribution newOn: chartDefinition);
		chartType: (self highchartChartTypeClass newOn: chartDefinition).


	chartDefinition dateGroupName: self dateSpan.