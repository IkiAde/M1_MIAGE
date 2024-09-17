Class {
	#name : 'RentedStateTest',
	#superclass : 'TestCase',
	#instVars : [
		'moto'
	],
	#category : 'Vehicles-Tests',
	#package : 'Vehicles-Tests'
}

{ #category : 'running' }
RentedStateTest >> setUp [
	super setUp.
	moto:= Bike new.
	moto state: (RentedState new initializeWithVehicle: moto)
]

{ #category : 'tests' }
RentedStateTest >> testTransitionToAvailableState [ 

moto available.
	self assert:(moto state isKindOf: AvailableState )
]

{ #category : 'tests' }
RentedStateTest >> testTransitionToOutOfServiceState [

	self should: [ moto outOfService ] raise: Error
]

{ #category : 'tests' }
RentedStateTest >> testTransitionToRentedState [

	self should: [ moto rented ] raise: Error
]
