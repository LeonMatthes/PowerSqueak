resizing
extentTopRight: aPoint keepRatio: aBoolean

	| thePoint |
	thePoint := self fixAspectRatio: aBoolean
					width: aPoint x - self layoutFrame leftFraction
					height: self layoutFrame bottomFraction - aPoint y
					recalculateX: [:newWidth | newWidth + self layoutFrame leftFraction]
					recalculateY: [:newHeight | self layoutFrame bottomFraction - newHeight].

	self	layoutFrame 
		rightFraction: thePoint x;
		topFraction: thePoint y.
	self layoutChanged