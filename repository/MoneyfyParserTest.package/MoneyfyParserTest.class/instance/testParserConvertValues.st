tests
testParserConvertValues

	parser := MoneyfyParser newFromFile: '/home/gemstone/GsDevKit_home/shared/repos/temp/Monefy.Data.4-3-2023.csv' root: MonefySystemRoot new. 

	parser convertedValuesDo: [:moneyfyLine |
		self assert: moneyfyLine valuesSize equals: 8].