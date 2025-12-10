Class {
	#name : 'SGStateTest',
	#superclass : 'TestCase',
	#category : 'Myg-SameGame-Tests',
	#package : 'Myg-SameGame',
	#tag : 'Tests'
}

{ #category : 'tests' }
SGStateTest >> testStateBackgroundRepresentationWithClassicSkin [
	"Test that states return correct colors with classic skin"
	
	| blueState redState |
	SGAppearance currentSkin: SGClassicSkin new.
	
	blueState := SGBlueState uniqueInstance.
	redState := SGRedState uniqueInstance.
	
	self assert: blueState backgroundRepresentation equals: Color lightBlue.
	self assert: redState backgroundRepresentation equals: Color lightRed
]

{ #category : 'tests' }
SGStateTest >> testStateBackgroundRepresentationWithDarkSkin [
	"Test that states return correct colors with dark skin"
	
	| blueState redState |
	SGAppearance currentSkin: SGDarkSkin new.
	
	blueState := SGBlueState uniqueInstance.
	redState := SGRedState uniqueInstance.
	
	self assert: blueState backgroundRepresentation equals: Color blue darker.
	self assert: redState backgroundRepresentation equals: Color red darker
]

{ #category : 'tests' }
SGStateTest >> testStateIsNull [
	"Test that null state is correctly identified"
	
	| nullState blueState |
	nullState := SGNullState uniqueInstance.
	blueState := SGBlueState uniqueInstance.
	
	self assert: nullState isNull.
	self deny: blueState isNull
]

{ #category : 'tests' }
SGStateTest >> testStatesSingleton [
	"Test that states are singletons"
	
	| state1 state2 |
	state1 := SGBlueState uniqueInstance.
	state2 := SGBlueState uniqueInstance.
	
	self assert: state1 identicalTo: state2
]
