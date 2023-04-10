other
renderMoneyfyParser: moneyfyParser on: html

	self isChartTimeScopeByMonth ifTrue: [self renderMoneyfyParserByMonth: moneyfyParser on: html].