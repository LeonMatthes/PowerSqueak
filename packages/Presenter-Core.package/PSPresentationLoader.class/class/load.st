as yet unclassified
load

	| presentations presentationName presentation |
	presentations := self defaultDirectory directoryNames.
	presentationName := UIManager default 
							chooseFrom: presentations 
							values: presentations 
							title: self loadQuestionMessage.
	presentation := presentationName
		ifNotNil: [self new loadPresentationFromDirectory: self defaultDirectory / presentationName].
	
	presentation ifNotNil: [presentation name: presentationName].
	^ presentation.