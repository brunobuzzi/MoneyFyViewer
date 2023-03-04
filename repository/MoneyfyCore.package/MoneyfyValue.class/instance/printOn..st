printing
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '[', attribute attributeName asString, ' , ', value , ']'