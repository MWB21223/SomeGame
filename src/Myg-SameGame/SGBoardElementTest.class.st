Class {
	#name : 'SGBoardElementTest',
	#superclass : 'TestCase',
	#instVars : [
		'board',
		'graphicBoard'
	],
	#category : 'Myg-SameGame-UI-Tests',
	#package : 'Myg-SameGame',
	#tag : 'UI-Tests'
}

{ #category : 'running' }
SGBoardElementTest >> setUp [

	super setUp.
	
	"Initialize Classic skin for consistent color tests"
	SGAppearance currentSkin: SGClassicSkin new.
	
	"Y: Yellow , B: Blue , G: Green , R: Red, N : Null
	represents this grid:
	 | B | Y | G | 
	 | B | Y | G | 
	 | R | Y | N | 

	"
	board := SGBoard new game: SGGame new.
	board configureGrid: ((CTNewArray2D width: 3 height: 3)
			 at: 1 @ 1 put: SGBox blue;
			 at: 2 @ 1 put: SGBox yellow;
			 at: 3 @ 1 put: SGBox green;
			 at: 1 @ 2 put: SGBox blue;
			 at: 2 @ 2 put: SGBox yellow;
			 at: 3 @ 2 put: SGBox green;
			 at: 1 @ 3 put: SGBox red;
			 at: 2 @ 3 put: SGBox yellow;
			 at: 3 @ 3 put: SGBox null;
			 yourself).
			
	graphicBoard := SGBoardElement new.
	graphicBoard grid: board grid.

]

{ #category : 'tests' }
SGBoardElementTest >> testClickOn2BlueBoxesColumnRearrange [
	
	board hitBoxOnx: 1 y: 1.

		self
		assert: (graphicBoard grid at: 1 @ 1) background paint color
		equals: Color lightRed.
	self
		assert: (graphicBoard grid at: 1 @ 2) background paint color
		equals: Color gray.
	self
		assert: (graphicBoard grid at: 1 @ 3) background paint color
		equals: Color gray.
]

{ #category : 'tests' }
SGBoardElementTest >> testClickOn3YellowBoxesSwitchEmptyColumn [

	board hitBoxOnx: 2 y: 1.
	
	self
		assert: (graphicBoard grid at: 2 @ 1) background paint color
		equals: Color lightGreen.
	self
		assert: (graphicBoard grid at: 2 @ 2) background paint color
		equals: Color lightGreen.
	self
		assert: (graphicBoard grid at: 2 @ 3) background paint color
		equals: Color gray.
		self
		assert: (graphicBoard grid at: 3 @ 1) background paint color
		equals: Color gray.
	self
		assert: (graphicBoard grid at: 3 @ 2) background paint color
		equals: Color gray.
	self
		assert: (graphicBoard grid at: 3 @ 3) background paint color
		equals: Color gray
]

{ #category : 'tests' }
SGBoardElementTest >> testClickOnIsolatedBoxNothingChanges [

		self
		assert: (graphicBoard grid at: 1 @ 3) background paint color
		equals: Color lightRed.

	board hitBoxOnx: 1 y: 3.
	
		self
		assert: (graphicBoard grid at: 1 @ 3) background paint color
		equals: Color lightRed.
]

{ #category : 'tests' }
SGBoardElementTest >> testClickOnNullNothingChanges [

		self
		assert: (graphicBoard grid at: 3 @ 3) background paint color
		equals: Color gray.

	board hitBoxOnx: 3 y: 3.
	
	self
		assert: (graphicBoard grid at: 3 @ 3) background paint color
		equals: Color gray
]

{ #category : 'tests' }
SGBoardElementTest >> testExchangeCase [

	self
		assert: (graphicBoard grid at: 1 @ 1) background paint color
		equals: Color lightBlue.
	
	self
		assert: (graphicBoard grid at: 2 @ 1) background paint color
		equals: (Color r: 1.0 g: 1.0 b: 0.6).
		
	board switchBox: 1 @ 1 with: 2 @ 1.
	
self
		assert: (graphicBoard grid at: 1 @ 1) background paint color
		equals: (Color r: 1.0 g: 1.0 b: 0.6).
		
	self
		assert: (graphicBoard grid at: 2 @ 1) background paint color
		equals: Color lightBlue.
]

{ #category : 'tests' }
SGBoardElementTest >> testGridSetUp [

	self
		assert: (graphicBoard grid at: 1 @ 1) background paint color
		equals: Color lightBlue.
	self
		assert: (graphicBoard grid at: 1 @ 2) background paint color
		equals: Color lightBlue.
	self
		assert: (graphicBoard grid at: 1 @ 3) background paint color
		equals: Color lightRed.
	self
		assert: (graphicBoard grid at: 2 @ 1) background paint color
		equals: (Color r: 1.0 g: 1.0 b: 0.6).
	self
		assert: (graphicBoard grid at: 2 @ 2) background paint color
		equals: (Color r: 1.0 g: 1.0 b: 0.6).
	self
		assert: (graphicBoard grid at: 2 @ 3) background paint color
		equals: (Color r: 1.0 g: 1.0 b: 0.6).
		self
		assert: (graphicBoard grid at: 3 @ 1) background paint color
		equals: Color lightGreen.
	self
		assert: (graphicBoard grid at: 3 @ 2) background paint color
		equals: Color lightGreen.
	self
		assert: (graphicBoard grid at: 3 @ 3) background paint color
		equals: Color gray.

]
