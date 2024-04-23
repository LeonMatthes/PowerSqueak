resizing
extentBottomRight: aPoint keepRatio: aBoolean

	| thePoint |
	thePoint := self fixAspectRatio: aBoolean
					width: aPoint x - self layoutFrame leftFraction
					height: aPoint y - self layoutFrame topFraction
					recalculateX: [:newWidth | self layoutFrame leftFraction + newWidth]
					recalculateY: [:newHeight | self layoutFrame topFraction + newHeight].

	self	layoutFrame 
		rightFraction: thePoint x;
		bottomFraction: thePoint y.
	self layoutChanged