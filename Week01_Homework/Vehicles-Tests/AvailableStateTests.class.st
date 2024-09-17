Class {
	#name : 'AvailableStateTests',
	#superclass : 'TestCase',
	#instVars : [
		'ferrari'
	],
	#category : 'Vehicles-Tests',
	#package : 'Vehicles-Tests'
}

{ #category : 'running' }
AvailableStateTests >> setUp [

	super setUp.
	ferrari := Car new
	
]

{ #category : 'tests' }
AvailableStateTests >> testTransitionToAvailableState [


	self should: [ ferrari available ] raise: Error
]

{ #category : 'tests' }
AvailableStateTests >> testTransitionToOutServiceState [

	ferrari outOfService.

	self assert: (ferrari state isKindOf: OutOfServiceState)
]

{ #category : 'tests' }
AvailableStateTests >> testTransitionToRentedState [


	ferrari rented.

	self assert: (ferrari state isKindOf: RentedState)
]
