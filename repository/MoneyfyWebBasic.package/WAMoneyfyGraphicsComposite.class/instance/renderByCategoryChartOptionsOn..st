render
renderByCategoryChartOptionsOn: html

	self basicCreateChartDefinition.
	chartDefinition addBlockOption: [:highchart | highchart series do: [:each | each visible: false]].
	
	self renderDateGroupsOptionsOn: html.
	html div with: [
		self renderStartDateOn: html.
		self renderEndDateOn: html.
		].