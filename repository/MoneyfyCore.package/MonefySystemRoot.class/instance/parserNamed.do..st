other
parserNamed: aString do: aBlock

	(moneyfyParsers includesKey: aString) ifFalse: [^self].

	^aBlock value: (moneyfyParsers at: aString)