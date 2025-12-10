Class {
	#name : 'SGBoxElementAnnouncementTest',
	#superclass : 'TestCase',
	#instVars : [
		'boxElement',
		'box',
		'board'
	],
	#category : 'Myg-SameGame-UI-Tests',
	#package : 'Myg-SameGame',
	#tag : 'UI-Tests'
}

{ #category : 'running' }
SGBoxElementAnnouncementTest >> setUp [

	super setUp.
	
	board := SGBoard new game: SGGame new.
	board configureGrid: ((CTNewArray2D width: 1 height: 1)
		at: 1 @ 1 put: SGBox blue;
		yourself).
	
	box := board grid at: 1 @ 1.
	boxElement := SGBoxElement createWithBox: box
]

{ #category : 'running' }
SGBoxElementAnnouncementTest >> tearDown [

	SGAppearance currentSkin: SGClassicSkin new.
	super tearDown
]

{ #category : 'tests' }
SGBoxElementAnnouncementTest >> testBoxElementSubscribesToBoxStateChanges [
	"Test that box element updates when box state changes"
	
	self assert: boxElement background paint color equals: Color lightBlue.
	
	box state: SGRedState uniqueInstance.
	
	self assert: boxElement background paint color equals: Color lightRed
]

{ #category : 'tests' }
SGBoxElementAnnouncementTest >> testBoxElementSubscribesToSkinChanges [
	"Test that box element updates when global skin changes"
	
	self assert: boxElement background paint color equals: Color lightBlue.
	
	SGAppearance currentSkin: SGDarkSkin new.
	
	self assert: boxElement background paint color equals: Color blue darker
]

{ #category : 'tests' }
SGBoxElementAnnouncementTest >> testBoxElementUpdatesOnMultipleSkinChanges [
	"Test that box element correctly updates through multiple skin changes"
	
	SGAppearance currentSkin: SGClassicSkin new.
	self assert: boxElement background paint color equals: Color lightBlue.
	
	SGAppearance currentSkin: SGDarkSkin new.
	self assert: boxElement background paint color equals: Color blue darker.
	
	SGAppearance currentSkin: SGClassicSkin new.
	self assert: boxElement background paint color equals: Color lightBlue
]
