Class {
	#name : 'SameGame',
	#superclass : 'Object',
	#category : 'Myg-SameGame-Model',
	#package : 'Myg-SameGame',
	#tag : 'Model'
}

{ #category : 'configuration' }
SameGame class >> largeGridSize [
	^ 30 @ 30
]

{ #category : 'configuration' }
SameGame class >> mediumGridSize [
	^ 20 @ 20
]

{ #category : 'instance creation' }
SameGame class >> open [

	<script>
	SGSizeSelector open
]

{ #category : 'instance creation' }
SameGame class >> openWidth: width height: height [

	| board graphicBoard space mainContainer appearancePanel validWidth validHeight |
	validWidth := (width max: 2) min: 50.
	validHeight := (height max: 2) min: 50.

	board := SGBoard new game: SGGame new.
	board generateGridWidth: validWidth height: validHeight.
	graphicBoard := SGBoardElement new.
	graphicBoard grid: board grid.

	mainContainer := BlElement new
		layout: BlLinearLayout vertical;
		constraintsDo: [:c |
			c horizontal matchParent.
			c vertical matchParent].

	"Create appearance/skin panel"
	appearancePanel := BlElement new
		layout: BlLinearLayout horizontal;
		background: Color lightGray;
		padding: (BlInsets all: 5);
		constraintsDo: [:c |
			c horizontal matchParent.
			c vertical fitContent].

	appearancePanel addChild: (BlTextElement new
		text: ('Skin: ' asRopedText);
		constraintsDo: [ :c | 
			c horizontal fitContent.
			c vertical fitContent ]).


	appearancePanel addChild: (BlElement new
		layout: (BlLinearLayout horizontal alignCenter);
		background: Color white;
		padding: (BlInsets all: 5);
		geometry: (BlRoundedRectangleGeometry cornerRadius: 5);
		addEventHandlerOn: BlClickEvent do: [:anEvent | SGAppearance currentSkin: SGClassicSkin new];
		constraintsDo: [ :c | 
			c horizontal fitContent.
			c vertical fitContent ];
		addChild: (BlTextElement new
			text: 'Classic' asRopedText;
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent ];
			yourself);
		yourself).


	appearancePanel addChild: (BlElement new
		layout: (BlLinearLayout horizontal alignCenter);
		background: Color darkGray;
		padding: (BlInsets all: 5);
		geometry: (BlRoundedRectangleGeometry cornerRadius: 5);
		addEventHandlerOn: BlClickEvent do: [:anEvent | SGAppearance currentSkin: SGDarkSkin new];
		constraintsDo: [ :c | 
			c horizontal fitContent.
			c vertical fitContent ];
		addChild: (BlTextElement new
			text: ('Dark' asRopedText foreground: Color white);
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent ];
			yourself);
		yourself).

	mainContainer addChild: appearancePanel.
	mainContainer addChild: graphicBoard.

	space := BlSpace new.
	space title: 'SameGame'.
	space root addChild: mainContainer.

	space extent: (validWidth * 35 max: 400) @ ((validHeight * 35) + 50).

	space show
]

{ #category : 'configuration' }
SameGame class >> smallGridSize [
	^ 10 @ 10
]

{ #category : 'see class side' }
SameGame >> seeClassSide [ 
]
