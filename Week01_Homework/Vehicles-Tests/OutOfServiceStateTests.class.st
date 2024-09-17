Class {
	#name : 'OutOfServiceStateTests',
	#superclass : 'TestCase',
	#instVars : [
		'tesla'
	],
	#category : 'Vehicles-Tests',
	#package : 'Vehicles-Tests'
}

{ #category : 'running' }
OutOfServiceStateTests >> setUp [

	super setUp.
	tesla := Car new.
	tesla state: (OutOfServiceState new initializeWithVehicle: tesla)
]

{ #category : 'tests' }
OutOfServiceStateTests >> testTransitionToAvailableState [

	self should: [ tesla available ] raise: Error

]

{ #category : 'tests' }
OutOfServiceStateTests >> testTransitionToOutOfServiceState [ 

	self should: [ tesla outOfService ] raise: Error
]

{ #category : 'tests' }
OutOfServiceStateTests >> testTransitionToRentedState [ 

	self should: [ tesla rented ] raise: Error
]
