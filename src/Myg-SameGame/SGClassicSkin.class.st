Class {
	#name : 'SGClassicSkin',
	#superclass : 'SGSkin',
	#category : 'Myg-SameGame',
	#package : 'Myg-SameGame'
}

{ #category : 'as yet unclassified' }
SGClassicSkin >> backgroundForBlueState [ 
	^ Color lightBlue
]

{ #category : 'as yet unclassified' }
SGClassicSkin >> backgroundForGreenState [ 
	^ Color lightGreen
]

{ #category : 'as yet unclassified' }
SGClassicSkin >> backgroundForNullState [
	^ Color gray
]

{ #category : 'as yet unclassified' }
SGClassicSkin >> backgroundForRedState [ 
	^ Color lightRed 
]

{ #category : 'as yet unclassified' }
SGClassicSkin >> backgroundForYellowState [
	^  Color r: 1.0 g: 1.0 b: 0.6
]
