chart options
highchartChartTypeClass

	^self isChartTypePie ifTrue: [BIPieChart] ifFalse: [BIBarChart]