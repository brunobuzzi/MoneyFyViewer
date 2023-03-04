instance creation
newNamed: aSymbol index: anInteger
	| aClass |
	
	aClass := self smalltalkClassMapFor: aSymbol.

	^self newNamed: aSymbol index: anInteger smalltalkClass: aClass