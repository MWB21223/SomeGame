Class {
	#name : 'SGRedState',
	#superclass : 'SGNullState',
	#category : 'Myg-SameGame-Model',
	#package : 'Myg-SameGame',
	#tag : 'Model'
}

{ #category : 'accessing' }
SGRedState >> backgroundRepresentation [
	^ self backgroundRepresentationUsing: SGAppearance currentSkin 
]

{ #category : 'as yet unclassified' }
SGRedState >> backgroundRepresentationUsing: aSkin [
	^ aSkin backgroundForRedState
]

{ #category : 'accessing' }
SGRedState >> isNull [

	^ false
]

{ #category : 'testing' }
SGRedState >> literal [

	^ 'R'
]
