Class {
	#name : 'SGAppearance',
	#superclass : 'Object',
	#instVars : [
		'currentSkin',
		'announcer'
	],
	#classInstVars : [
		'currentSkin',
		'announcer'
	],
	#category : 'Myg-SameGame',
	#package : 'Myg-SameGame'
}

{ #category : 'accessing' }
SGAppearance class >> announcer [ 
	^ announcer ifNil: [ announcer := Announcer new ]
]

{ #category : 'accessing' }
SGAppearance class >> currentSkin [ 

	^ currentSkin ifNil: [ currentSkin := SGClassicSkin new ]
]

{ #category : 'accessing' }
SGAppearance class >> currentSkin: aSkin [ 
	currentSkin = aSkin ifTrue: [ ^ self ].
	currentSkin := aSkin.
	self announcer announce: SGSkinChangedAnnouncement new
]

{ #category : 'as yet unclassified' }
SGAppearance class >> whenSkinChanges: anAnnouncementBlock [ 

	self announcer when: SGSkinChangedAnnouncement do: anAnnouncementBlock
]
