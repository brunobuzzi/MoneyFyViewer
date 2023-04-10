query
includesAttributeNamed: aString 

	^attributes anySatisfy: [:each | each attributeName = aString]