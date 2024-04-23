resizing
fixAspectRatio: aBoolean
width: width
height: height
recalculateX: xBlock
recalculateY: yBlock
	"When setting the new layoutFraction by dragging the handles, make sure that the aspect ratio
	remains stable when aBoolean is set (usually by pressing 'shift').
	For this, we need the width and height that the new handle would create, and a way
	to recalculate the new layout point from the given width and height."
	| newWidth newHeight |
	newWidth := width.
	newHeight := height.

	(aBoolean and: [self aspectRatio notNil]) ifTrue: 
		[| newRatio  |
		newRatio := newWidth / (newHeight max: 0.0001). "make sure it's never zero"
		newRatio > self aspectRatio
			ifTrue: ["Too wide - increase height to compensate"
					newHeight := newWidth / self aspectRatio]
			ifFalse: ["Too narrow - increase width to compensate"
					newWidth := newHeight * self aspectRatio]].
	
	^ (xBlock value: newWidth) @ (yBlock value: newHeight)