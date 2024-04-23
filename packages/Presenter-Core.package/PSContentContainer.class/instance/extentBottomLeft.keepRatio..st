resizing
extentBottomLeft: aPoint keepRatio: aBoolean

	|thePoint|
	thePoint := self fixAspectRatio: aBoolean
					width: self layoutFrame rightFraction - aPoint x
					height: aPoint y - self layoutFrame topFraction
					recalculateX: [:newWidth | self layoutFrame rightFraction - newWidth]
					recalculateY: [:newHeight | self layoutFrame topFraction + newHeight].

	self	layoutFrame 
		leftFraction: thePoint x;
		bottomFraction: thePoint y.
	self layoutChanged