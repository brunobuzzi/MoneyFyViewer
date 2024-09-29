render
renderByCategoryChartOptionsOn: html

	self basicCreateChartDefinition.
	html div with: [
		self renderStartDateOn: html.
		self renderEndDateOn: html.
		].

	"chartDefinition chartType: (self highchartChartTypeClass newOn: chartDefinition)."