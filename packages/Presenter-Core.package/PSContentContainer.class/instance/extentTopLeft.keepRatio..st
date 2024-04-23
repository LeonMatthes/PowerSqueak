resizing
extentTopLeft: aPoint keepRatio: aBoolean

	| thePoint |
	thePoint := self fixAspectRatio: aBoolean
					width: self layoutFrame rightFraction - aPoint x
					height: self layoutFrame bottomFraction - aPoint y
					recalculateX: [:newWidth | self layoutFrame rightFraction - newWidth]
					recalculateY: [:newHeight | self layoutFrame bottomFraction - newHeight].
	
	self	layoutFrame 
		leftFraction: thePoint x;
		topFraction: thePoint y.
	self layoutChanged