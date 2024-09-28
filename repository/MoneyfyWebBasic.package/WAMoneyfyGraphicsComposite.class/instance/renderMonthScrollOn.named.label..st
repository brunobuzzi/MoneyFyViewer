render
renderMonthScrollOn: html named: aString label: label
	| currentMonthValue |

	currentMonthValue := self componentValueAt: aString ifAbsent: [Date today monthIndex].
	html form class: 'float-left centered-unique-form'; with: [
		html fieldSet with: [
			html legend with: [
				html strong: label.
				html label attributeAt: 'for' put: aString; with: ('Month' translateIn: self session).
				html textInput attributeAt: 'id' put: aString; readonly: true; with: currentMonthValue.
				html submitButton callback: [self addValue: currentMonthValue - 1 named: aString.  (self componentValueAt: aString) < 1 ifTrue: [self addValue: 12 named: aString]]; with: '-'.
				html submitButton callback: [self addValue: currentMonthValue + 1 named: aString. (self componentValueAt: aString) > 12 ifTrue: [self addValue: 1 named: aString].]; with: '+'.
			].
		].
	].