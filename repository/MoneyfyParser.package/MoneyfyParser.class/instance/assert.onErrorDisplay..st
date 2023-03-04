parsing
assert: aBlock onErrorDisplay: aString

	aBlock value ifFalse: [self error: aString].