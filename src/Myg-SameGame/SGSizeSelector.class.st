Class {
	#name : 'SGSizeSelector',
	#superclass : 'BlElement',
	#category : 'Myg-SameGame-UI',
	#package : 'Myg-SameGame',
	#tag : 'UI'
}

{ #category : 'opening' }
SGSizeSelector class >> open [
	<script>
	| space |
	space := BlSpace new.
	space title: 'SameGame - New Game'.
	space extent: 300@400.
	space root addChild: self new.
	space show
]

{ #category : 'initialization' }
SGSizeSelector >> addButtons [

	self addChild: (self createButtonLabel: 'Small (10x10)' action: [ SameGame openWidth: 10 height: 10 ]).
	self addChild: (self createButtonLabel: 'Medium (20x20)' action: [ SameGame openWidth: 20 height: 20 ]).
	self addChild: (self createButtonLabel: 'Large (30x30)' action: [ SameGame openWidth: 30 height: 30 ]).
]

{ #category : 'factory' }
SGSizeSelector >> createButtonLabel: aString action: aBlock [

	| button |
	button := BlElement new.
	button geometry: (BlRoundedRectangleGeometry cornerRadius: 8).
	button background: Color lightGray.
	button padding: (BlInsets all: 10).
	button margin: (BlInsets bottom: 10).
	button layout: BlLinearLayout horizontal alignCenter.
	button constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical fitContent ].
		
	button addChild: (BlTextElement new 
		text: (aString asRopedText)).
		
	button addEventHandlerOn: BlClickEvent do: [ :e |
		aBlock value.
		self space close ].
		
	^ button
]

{ #category : 'initialization' }
SGSizeSelector >> initialize [

	super initialize.
	self layout: (BlLinearLayout vertical cellSpacing: 10).
	self constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	self padding: (BlInsets all: 20).
	self background: Color white.
	
	self addChild: (BlTextElement new 
		text: ('Select Grid Size' asRopedText fontSize: 24; bold);
		margin: (BlInsets bottom: 20)).
		
	self addButtons.
]
