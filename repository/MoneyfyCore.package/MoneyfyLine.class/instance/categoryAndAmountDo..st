other
categoryAndAmountDo: aBlock
	| category amount |
	
	self valueAt: 3 do: [:moneyfyValue | category := moneyfyValue value].
	self valueAt: 6 do: [:moneyfyValue | amount := moneyfyValue convertedValue].

	^aBlock value: category value: amount