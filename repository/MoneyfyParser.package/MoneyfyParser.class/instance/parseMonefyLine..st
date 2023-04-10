parsing
parseMonefyLine: line
	| stream attr attrIndex valueStream isSpecialNumber lastIsComma char currentIsComa monefyLine |

	line isEmpty ifTrue: [^self].
	monefyLine := MoneyfyLine new.
	isSpecialNumber := false.
	lastIsComma := false.
	attrIndex := 1.
	stream := ReadStream on: line.
	valueStream := WriteStream on: String new.
	[stream atEnd] whileFalse: [ 
		attr := self attributeAtIndex: attrIndex ifNone: [self error: 'Bad format attribute does not exist'].
		char := stream next.
"(char == $,) ifTrue: [self halt]."
"attrIndex = 8 ifTrue: [self halt]."
		currentIsComa := (char == $,).
		(currentIsComa and: [attrIndex < 8]) ifTrue: [attrIndex := attrIndex + 1.
					monefyLine addValue: (MoneyfyValue newValue: valueStream contents attribute: attr).
					valueStream := WriteStream on: String new.].

		isSpecialNumber := (lastIsComma and: [char == $"]) and: [attrIndex < 8].
		isSpecialNumber 
		ifTrue: [char := stream next. 
				valueStream nextPut: char.
				[char == $"] whileFalse: [char := stream next.
											(char == $") ifFalse: [valueStream nextPut: char].
				].
				attrIndex := attrIndex + 1.
				stream atEnd ifFalse: [char := stream next].
				monefyLine addValue: (MoneyfyValue newValue: valueStream contents attribute: attr).
				valueStream := WriteStream on: String new.
		].

		currentIsComa ifFalse: [valueStream nextPut: char].
		attrIndex = 8 ifTrue: [valueStream nextPut: char].

		stream atEnd ifTrue: [monefyLine addValue: (MoneyfyValue newValue: valueStream contents attribute: attr)].
		
		lastIsComma := (char == $,).
	].

	convertedValues add: monefyLine