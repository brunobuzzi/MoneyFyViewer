query
attributeAtIndex: index ifNone: aBlock

	^attributes detect: [:each | each index = index] ifNone: aBlock