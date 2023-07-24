render
renderMonthScrollOn: html

	html form class: 'float-left centered-unique-form'; with: [
		html fieldSet with: [
			html legend with: [
				html strong: 'Month Scroller'.
				html label attributeAt: 'for' put: 'year'; with: ('Month' translateIn: self session).
				html textInput attributeAt: 'id' put: 'year'; readonly: true; with: currentMonthScope.
				html submitButton callback: [currentMonthScope := currentMonthScope - 1. currentMonthScope < 1 ifTrue: [currentMonthScope := 12. currentYearScope := currentYearScope - 1].]; with: '-'.
				html submitButton callback: [currentMonthScope := currentMonthScope + 1. currentMonthScope > 12 ifTrue: [currentMonthScope := 1. currentYearScope := currentYearScope + 1].]; with: '+'.
			].
		].
	].