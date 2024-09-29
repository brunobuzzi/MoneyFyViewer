render
renderByCategoryChartOptionsOn: html

	self basicCreateChartDefinition.
	self renderDateGroupsOptionsOn: html.
	html div with: [
		self renderStartDateOn: html.
		self renderEndDateOn: html.
		].