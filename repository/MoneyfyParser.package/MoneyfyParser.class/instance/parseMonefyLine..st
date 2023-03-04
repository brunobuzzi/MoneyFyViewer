parsing
parseMonefyLine: line
	| stream attr attrIndex valueStream isSpecialNumber lastIsComma char currentIsComa monefyLine |

	monefyLine := MoneyfyLine new.
	isSpecialNumber := false.
	lastIsComma := false.
	attrIndex := 1.
	stream := ReadStream on: line.
	valueStream := WriteStream on: String new.
	[stream atEnd] whileFalse: [ 
		attr := self attributeAtIndex: attrIndex ifNone: [self error: 'Bad format attribute does not exist'].
		char := stream next.
		currentIsComa := (char == $,).
		currentIsComa ifTrue: [attrIndex := attrIndex + 1.
					monefyLine addValue: (MoneyfyValue newValue: valueStream contents attribute: attr).
					valueStream := WriteStream on: String new.].

		isSpecialNumber := lastIsComma and: [char == $"].
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
		
		lastIsComma := (char == $,).
	].

	convertedValues add: monefyLine