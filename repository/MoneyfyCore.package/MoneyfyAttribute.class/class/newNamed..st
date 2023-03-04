instance creation
newNamed: aSymbol 
	| aClass |
	
	aClass := self smalltalkClassMapFor: aSymbol.

	^self newNamed: aSymbol smalltalkClass: aClass