selection tests
testUnselectByClicking

	self click: MouseEvent redButton at: (self morph leftCenter - (1@1)).
	self assert: self slideContainer selection class equals: PSNullContentContainer.
	self assert: self container borderColor equals: Color transparent.
	self assert: self container hasHandles not