parsing
parseMonefyLine: line
	| elements |

	elements := line subStrings: ','.
	self assert: [elements size = 8] onErrorDisplay: 'Incorrect number of attribute values'.