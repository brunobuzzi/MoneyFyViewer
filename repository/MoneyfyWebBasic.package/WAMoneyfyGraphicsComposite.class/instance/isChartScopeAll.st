testing
isChartScopeAll

	^(self componentValueAt: self chartScopeName ifAbsent: ['All']) = 'All'