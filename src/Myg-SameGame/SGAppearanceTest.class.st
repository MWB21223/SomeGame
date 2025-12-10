Class {
	#name : 'SGAppearanceTest',
	#superclass : 'TestCase',
	#instVars : [
		'previousSkin'
	],
	#category : 'Myg-SameGame-Tests',
	#package : 'Myg-SameGame',
	#tag : 'Tests'
}

{ #category : 'running' }
SGAppearanceTest >> setUp [

	super setUp.
	previousSkin := SGAppearance currentSkin
]

{ #category : 'running' }
SGAppearanceTest >> tearDown [

	SGAppearance currentSkin: previousSkin.
	super tearDown
]

{ #category : 'tests' }
SGAppearanceTest >> testClassicSkinColors [
	"Test that classic skin provides correct colors for all states"
	
	| skin |
	skin := SGClassicSkin new.
	
	self assert: skin backgroundForBlueState equals: Color lightBlue.
	self assert: skin backgroundForRedState equals: Color lightRed.
	self assert: skin backgroundForNullState equals: Color gray
]

{ #category : 'tests' }
SGAppearanceTest >> testDarkSkinColors [
	"Test that dark skin provides darker colors"
	
	| skin |
	skin := SGDarkSkin new.
	
	self assert: skin backgroundForBlueState equals: Color blue darker.
	self assert: skin backgroundForRedState equals: Color red darker
]

{ #category : 'tests' }
SGAppearanceTest >> testSetCurrentSkin [
	"Test that we can change the current skin"
	
	| darkSkin |
	darkSkin := SGDarkSkin new.
	SGAppearance currentSkin: darkSkin.
	
	self assert: SGAppearance currentSkin equals: darkSkin
]

{ #category : 'tests' }
SGAppearanceTest >> testSkinChangeAnnouncementFired [
	
	| flag |
	flag := false.
	
	SGAppearance announcer 
		when: SGSkinChangedAnnouncement 
		send: #yourself
		to: self.
	
	SGAppearance currentSkin: SGDarkSkin new.
	
	self assert: true
]
