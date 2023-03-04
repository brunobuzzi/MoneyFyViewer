printing
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '[', attributeName asString, ' , ', smalltalkClass name asString, ']'