parsing
parse

	moneyfyLines := originalString asString subStrings: Character lf.

	self assert: [moneyfyLines notEmpty] onErrorDisplay: 'Empty File'.
	 
	attributes := (moneyfyLines first subStrings: ',') collect: [:each | MoneyfyAttribute newNamed: each asSymbol].

	moneyfyLines allButFirst do: [:eachLine | self parseMonefyLine: eachLine]