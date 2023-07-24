instance creation
newFromFile: pathFile root: aMoneyfyParser

	^self newFromStream: (GsFile openReadOnServer: pathFile) contentsAsUtf8 readStream root: aMoneyfyParser