other
date
	| date |
	
	self valueAt: 1 do: [:moneyfyValue | date := moneyfyValue convertedValue].

	^date