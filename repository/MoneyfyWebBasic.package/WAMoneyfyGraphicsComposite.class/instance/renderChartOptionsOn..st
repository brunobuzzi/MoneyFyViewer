render
renderChartOptionsOn: html

	html div with: [
		html form with: [
			html fieldSet with: [
				html radioGroup
					callback: [:value | self addValue: value named: self chartScopeName];
					selected: (self componentValueAt: self chartScopeName ifAbsent: ['All']);
					with: [:group |
						#('All' 'By Category') do: [:each | 
							html label: [group radioButton onChange: 'submit()'; value: each.
							html text: each]
						]
					]
			]
		]
	].

	self isChartScopeAll 
	ifTrue: [self renderAllChartOptionsOn: html]
	ifFalse: [self renderByCategoryChartOptionsOn: html]