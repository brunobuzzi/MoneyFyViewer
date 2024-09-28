tests
testParserReadAttributes

	parser := MoneyfyParser newFromFile: '/home/gemstone/GsDevKit_home/shared/repos/temp/Monefy.Data.4-3-2023.csv' root: MonefySystemRoot new. 

	self assert: parser attributesSize equals: 8.

	#(#'date' #'account' #'category' #'amount' #'currency' #'converted amount' #'currency' #'description') allSatisfy: [:each | parser includesAttributeNamed: each]