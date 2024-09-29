render
renderContentOn: html
	| startDate endDate |

	self renderChartOptionsOn: html.

	"html div with: [
		self renderYearScrollOn: html.
		self renderMonthScrollOn: html.]."

	startDate := ((self hasComponentValueAt: 'startYear') and:[self hasComponentValueAt: 'startMonth'])
						ifTrue: [Date fromString: (self componentValueAt: 'startMonth') printString, '/01/', (self componentValueAt: 'startYear') printString]
						ifFalse: [Date fromString: currentMonthScope printString, '/01/', currentYearScope printString].

	endDate := ((self hasComponentValueAt: 'endYear') and:[self hasComponentValueAt: 'endMonth'])
						ifTrue: [Date fromString: (self componentValueAt: 'endMonth') printString, '/01/', (self componentValueAt: 'endYear') printString]
						ifFalse: [Date fromString: currentMonthScope printString, '/01/', currentYearScope printString].

	chartDefinition distribution 
		startDate: startDate;
		endDate: endDate.

	html div with: [chartDefinition renderOn: html]