Class {
	#name : 'RentedState',
	#superclass : 'VehicleState',
	#category : 'Vehicles',
	#package : 'Vehicles'
}

{ #category : 'as yet unclassified' }
RentedState >> available [
	"Transition to the available state."

	vehicle checkMaximumRental
		ifTrue: [
		vehicle state: (AvailableState new initializeWithVehicle: vehicle) ]
		ifFalse: [
			vehicle state:
				(OutOfServiceState new initializeWithVehicle: vehicle) ]
]

{ #category : 'as yet unclassified' }
RentedState >> outOfService [
	"Transition to the out of service state."

	self error:
		'This vehicle is currently rented,it can not be out of service.'
]

{ #category : 'as yet unclassified' }
RentedState >> rented [
	"Attempt to rent the vehicle"

	self error: 'The vehicle is already rented.'
]
