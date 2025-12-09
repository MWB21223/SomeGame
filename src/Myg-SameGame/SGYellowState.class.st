Class {
	#name : 'SGYellowState',
	#superclass : 'SGNullState',
	#category : 'Myg-SameGame-Model',
	#package : 'Myg-SameGame',
	#tag : 'Model'
}

{ #category : 'accessing' }
SGYellowState >> backgroundRepresentation [
	^ self backgroundRepresentationUsing: SGAppearance currentSkin 
]

{ #category : 'as yet unclassified' }
SGYellowState >> backgroundRepresentationUsing: aSkin [
	^ aSkin backgroundForYellowState
]

{ #category : 'accessing' }
SGYellowState >> isNull [

	^ false
]

{ #category : 'testing' }
SGYellowState >> literal [

	^ 'Y'
]
