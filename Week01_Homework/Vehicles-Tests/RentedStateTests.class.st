Class {
	#name : 'RentedStateTests',
	#superclass : 'TestCase',
	#instVars : [
		'moto'
	],
	#category : 'Vehicles-Tests',
	#package : 'Vehicles-Tests'
}

{ #category : 'running' }
RentedStateTests >> setUp [
	super setUp.
	moto:= Bike new.
	moto state: (RentedState new initializeWithVehicle: moto)
]

{ #category : 'tests' }
RentedStateTests >> testTransitionToAvailableState [ 

moto available.
	self assert:(moto state isKindOf: AvailableState )
]

{ #category : 'tests' }
RentedStateTests >> testTransitionToOutOfServiceState [

	self should: [ moto outOfService ] raise: Error
]

{ #category : 'tests' }
RentedStateTests >> testTransitionToRentedState [

	self should: [ moto rented ] raise: Error
]
