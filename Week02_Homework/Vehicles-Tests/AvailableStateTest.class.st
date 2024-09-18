Class {
	#name : 'AvailableStateTest',
	#superclass : 'TestCase',
	#instVars : [
		'ferrari'
	],
	#category : 'Vehicles-Tests',
	#package : 'Vehicles-Tests'
}

{ #category : 'running' }
AvailableStateTest >> setUp [

	super setUp.
	ferrari := Car new
	
]

{ #category : 'tests' }
AvailableStateTest >> testTransitionToAvailableState [


	self should: [ ferrari available ] raise: Error
]

{ #category : 'tests' }
AvailableStateTest >> testTransitionToOutServiceState [

	ferrari outOfService.

	self assert: (ferrari state isKindOf: OutOfServiceState)
]

{ #category : 'tests' }
AvailableStateTest >> testTransitionToRentedState [


	ferrari rented.

	self assert: (ferrari state isKindOf: RentedState)
]
