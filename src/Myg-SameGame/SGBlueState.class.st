Class {
	#name : 'SGBlueState',
	#superclass : 'SGNullState',
	#category : 'Myg-SameGame-Model',
	#package : 'Myg-SameGame',
	#tag : 'Model'
}

{ #category : 'accessing' }
SGBlueState >> backgroundRepresentation [
	^ self backgroundRepresentationUsing: SGAppearance currentSkin 
]

{ #category : 'as yet unclassified' }
SGBlueState >> backgroundRepresentationUsing: aSkin [
	^ aSkin backgroundForBlueState
]

{ #category : 'accessing' }
SGBlueState >> isNull [

	^ false
]

{ #category : 'testing' }
SGBlueState >> literal [

	^ 'B'
]
