testing
isChartTypePie

	^(self componentValueAt: self chartTypeName ifAbsent: ['Pie']) = 'Pie'