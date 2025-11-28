Class {
	#name : #SGSizeConfigurationTest,
	#superclass : #TestCase,
	#category : #'Myg-SameGame-Tests'
}

{ #category : #tests }
SGSizeConfigurationTest >> testSmallGridSize [
	self assert: SameGame smallGridSize equals: 10@10
]

{ #category : #tests }
SGSizeConfigurationTest >> testMediumGridSize [
	self assert: SameGame mediumGridSize equals: 20@20
]

{ #category : #tests }
SGSizeConfigurationTest >> testLargeGridSize [
	self assert: SameGame largeGridSize equals: 30@30
]
