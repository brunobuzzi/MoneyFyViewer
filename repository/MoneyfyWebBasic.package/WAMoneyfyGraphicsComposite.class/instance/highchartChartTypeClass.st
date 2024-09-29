chart options
highchartChartTypeClass

	^self isChartScopeAll
	ifTrue: [
		self isChartTypePie 
		ifTrue: [BIPieChart] 
		ifFalse: [BIBarChart].
	]
	ifFalse: [BISplineChart].