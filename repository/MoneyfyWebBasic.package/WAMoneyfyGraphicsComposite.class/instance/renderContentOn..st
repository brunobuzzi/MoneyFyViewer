other
renderContentOn: html
	
	self session systemRoot 
		parserNamed: 'default' 
		do: [:moneyfyParser | self renderMoneyfyParser: moneyfyParser on: html].

	html div with: [
		self renderYearScrollOn: html.
		self renderMonthScrollOn: html.].