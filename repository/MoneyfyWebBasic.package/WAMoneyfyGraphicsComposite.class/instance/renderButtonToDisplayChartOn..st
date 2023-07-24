render
renderButtonToDisplayChartOn: html

	html form with: [
		html fieldSet with: [
			html button callback: [self toggleChartDefinitionToRender]; with: 'Render'.
		]
	]