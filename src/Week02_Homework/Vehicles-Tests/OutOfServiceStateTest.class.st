Class {
	#name : 'OutOfServiceStateTest',
	#superclass : 'TestCase',
	#instVars : [
		'tesla'
	],
	#category : 'Vehicles-Tests',
	#package : 'Vehicles-Tests'
}

{ #category : 'running' }
OutOfServiceStateTest >> setUp [

	super setUp.
	tesla := Car new.
	tesla state: (OutOfServiceState new initializeWithVehicle: tesla)
]

{ #category : 'tests' }
OutOfServiceStateTest >> testTransitionToAvailableState [

	self should: [ tesla available ] raise: Error

]

{ #category : 'tests' }
OutOfServiceStateTest >> testTransitionToOutOfServiceState [ 

	self should: [ tesla outOfService ] raise: Error
]

{ #category : 'tests' }
OutOfServiceStateTest >> testTransitionToRentedState [ 

	self should: [ tesla rented ] raise: Error
]
