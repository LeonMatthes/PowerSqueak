scaling
layoutFrame: aLayoutFrame

	super layoutFrame: aLayoutFrame.
	
	"Note: The y-axis is inverted, 0 is at the top, which is why  height := bottom - top"
	self aspectRatio: (aLayoutFrame rightFraction - aLayoutFrame leftFraction) "width" /
					(aLayoutFrame bottomFraction - aLayoutFrame topFraction) "height".