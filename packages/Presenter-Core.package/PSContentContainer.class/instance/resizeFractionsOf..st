resizing
resizeFractionsOf: anEvent
	
	| layoutFractions |
	layoutFractions := self owner layoutFractionsOf: anEvent cursorPoint.
	(self isMagnetic and: [anEvent shiftPressed not])
		ifTrue: [layoutFractions := self magnetizeLayoutFractions: layoutFractions].
	^ layoutFractions