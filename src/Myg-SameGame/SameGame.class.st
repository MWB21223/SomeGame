Class {
	#name : #SameGame,
	#superclass : #Object,
	#category : #'Myg-SameGame-Model'
}

{ #category : #'instance creation' }
SameGame class >> open [

	<script>
	self openWidth: 20 height: 20
]

{ #category : #'instance creation' }
SameGame class >> openWidth: width height: height [

	| board graphicBoard space validWidth validHeight |
	validWidth := (width max: 2) min: 50.
	validHeight := (height max: 2) min: 50.

	board := SGBoard new game: SGGame new.
	board generateGridWidth: validWidth height: validHeight.
	graphicBoard := SGBoardElement new.
	graphicBoard grid: board grid.

	space := BlSpace new.
	space title: 'SameGame'.
	space root addChild: graphicBoard.
	"Adjust window size based on grid size, assuming ~35px per cell + padding"
	space extent: (validWidth * 35) @ (validHeight * 35).

	space show
]

{ #category : #'see class side' }
SameGame >> seeClassSide [ 
]
