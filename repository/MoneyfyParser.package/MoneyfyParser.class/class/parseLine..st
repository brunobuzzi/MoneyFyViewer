instance creation
parseLine: aString

	^self newFromStream: aString readStream root: (UserGlobals at: #MoneyfyRoot)