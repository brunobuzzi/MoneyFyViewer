other
renderContentOn: html
	
	"self session systemRoot 
		parserNamed: 'default' 
		do: [:moneyfyParser | self renderMoneyfyParser: moneyfyParser on: html]."

	html div with: [
		self renderYearScrollOn: html.
		self renderMonthScrollOn: html.].

	chartDefinition distribution 
		startDate: (Date fromString: currentMonthScope printString, '/01/', currentYearScope printString);
		endDate: (Date fromString: currentMonthScope printString, '/', chartDefinition distribution startDate daysInMonth printString, '/',currentYearScope printString).

	html div with: [chartDefinition renderOn: html]