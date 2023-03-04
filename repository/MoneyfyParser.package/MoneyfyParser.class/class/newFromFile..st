instance creation
newFromFile: pathFile

	^self newFromStream: (GsFile openReadOnServer: pathFile) contentsAsUtf8 readStream