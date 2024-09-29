bi chart
getScopeValue

"	^self searchValueAt: 'scope' ifAbsent: ['']"

	^self componentValueAt: self chartScopeName ifAbsent: ['All']