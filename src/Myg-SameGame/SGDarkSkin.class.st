Class {
	#name : 'SGDarkSkin',
	#superclass : 'SGSkin',
	#category : 'Myg-SameGame',
	#package : 'Myg-SameGame'
}

{ #category : 'as yet unclassified' }
SGDarkSkin >> backgroundForBlueState [ 

	^ Color blue darker
]

{ #category : 'as yet unclassified' }
SGDarkSkin >> backgroundForGreenState [ 

		^ Color green darker
]

{ #category : 'as yet unclassified' }
SGDarkSkin >> backgroundForNullState [ 

	^ Color gray darker
]

{ #category : 'as yet unclassified' }
SGDarkSkin >> backgroundForRedState [ 
	^ Color red darker
]

{ #category : 'as yet unclassified' }
SGDarkSkin >> backgroundForYellowState [ 

	^ Color yellow darker
]
