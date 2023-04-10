other
collectCategories
	| categories |

	categories := OrderedCollection new.
	self convertedValuesDo: [:moneyfyLine | moneyfyLine valueAt: 3 do: [:moneyfyValue | categories add: moneyfyValue value]].

	^categories asSet asSortedCollection