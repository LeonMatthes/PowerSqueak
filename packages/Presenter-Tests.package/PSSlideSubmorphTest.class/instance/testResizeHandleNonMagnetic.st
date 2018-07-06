container tests
testResizeHandleNonMagnetic
	| container topLeft targetPoint |
	self slide addContent: self morph.
	container := self morph owner.
	topLeft := self morph topLeft.
	targetPoint := self morph bottomRight + (20 @ 20).
	self drag: MouseEvent redButton from: self morph bottomRight  to: targetPoint.
	self slide fullBounds.
	self assert: self morph bounds = (topLeft corner: targetPoint)