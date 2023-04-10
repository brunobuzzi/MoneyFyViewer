other
renderMonthScrollOn: html

	html form class: 'float-left centered-unique-form'; with: [
		html fieldSet with: [
			html legend with: [
				html strong: 'Month Scroller'.
				html label attributeAt: 'for' put: 'year'; with: ('Month' translateIn: self session).
				html textInput attributeAt: 'id' put: 'year'; readonly: true; with: currentMonthScope.
				html submitButton callback: [currentMonthScope := currentMonthScope - 1]; with: '-'.
				html submitButton callback: [currentMonthScope := currentMonthScope + 1]; with: '+'.
			].
		].
	].