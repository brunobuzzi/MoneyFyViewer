render
renderAllChartOptionsOn: html

	self basicCreateChartDefinition.
	html div with: [
		html form with: [
			html fieldSet with: [
				html radioGroup
					callback: [:value | self addValue: value named: self chartTypeName];
					selected: (self componentValueAt: self chartTypeName ifAbsent: ['Pie']);
					with: [:group |
						#('Bar' 'Pie') do: [:each | 
							html label: [group radioButton onChange: 'submit()'; value: each.
							html text: each]
						]
					]
			]
		].
	].

	html div with: [
		self renderStartDateOn: html.
		self renderEndDateOn: html.
		].

	chartDefinition chartType: (self highchartChartTypeClass newOn: chartDefinition).