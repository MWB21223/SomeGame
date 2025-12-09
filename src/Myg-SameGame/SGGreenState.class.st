Class {
	#name : 'SGGreenState',
	#superclass : 'SGNullState',
	#category : 'Myg-SameGame-Model',
	#package : 'Myg-SameGame',
	#tag : 'Model'
}

{ #category : 'accessing' }
SGGreenState >> backgroundRepresentation [
	^ self backgroundRepresentationUsing: SGAppearance currentSkin 
]

{ #category : 'as yet unclassified' }
SGGreenState >> backgroundRepresentationUsing: aSkin [
	^ aSkin backgroundForGreenState
]

{ #category : 'accessing' }
SGGreenState >> isNull [

	^ false
]

{ #category : 'testing' }
SGGreenState >> literal [

	^ 'G'
]
