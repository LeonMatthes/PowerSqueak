slide miniatures
updateCurrentMiniature

	self presentationMode
		ifFalse: [self currentMiniature updateImage].