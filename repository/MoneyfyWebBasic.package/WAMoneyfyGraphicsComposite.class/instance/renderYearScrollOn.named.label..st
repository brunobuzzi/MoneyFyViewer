render
renderYearScrollOn: html named: aString label: label
	| currentYearValue |

	currentYearValue := self componentValueAt: aString ifAbsent: [Date today year].
	html form class: 'float-left centered-unique-form'; with: [
		html fieldSet with: [
			html legend with: [
				html strong: label.
				html label attributeAt: 'for' put: aString; with: ('Year' translateIn: self session).
				html textInput attributeAt: 'id' put: aString; readonly: true; with: currentYearValue.
				html submitButton callback: [self addValue: currentYearValue - 1 named: aString]; with: '-'.
				html submitButton callback: [self addValue: currentYearValue + 1 named: aString]; with: '+'.
			].
		].
	].