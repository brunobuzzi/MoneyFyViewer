parsing
parse

	moneyfyLines := originalString contents asString subStrings: Character lf.

	self assert: [moneyfyLines notEmpty] onErrorDisplay: 'Empty File'.
	 
	(moneyfyLines first subStrings: ',') keysAndValuesDo: [:index :each | attributes add: (MoneyfyAttribute newNamed: each asSymbol index: index)].

	moneyfyLines allButFirst do: [:eachLine | self parseMonefyLine: eachLine]