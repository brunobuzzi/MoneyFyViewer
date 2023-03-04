printing
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '[', attributeName asString, ' , ',index printString, ' , ', smalltalkClass name asString, ']'