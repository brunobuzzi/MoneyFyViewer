other
amountIsNegative
	| isNegative |
	
	self valueAt: 6 do: [:moneyfyValue | isNegative := moneyfyValue convertedValue negative].

	^isNegative