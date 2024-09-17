Class {
	#name : 'AvailableState',
	#superclass : 'VehicleState',
	#category : 'Vehicles',
	#package : 'Vehicles'
}

{ #category : 'nil' }
AvailableState >> available [
	"Handle the case where the vehicle is already available"

	self error: 'The vehicle is already available.'
]

{ #category : 'nil' }
AvailableState >> outOfService [
	"Transition to the out of service state"

	vehicle state:
		(OutOfServiceState new initializeWithVehicle: vehicle)
]

{ #category : 'nil' }
AvailableState >> rented [

	vehicle checkMaximumRental
		ifTrue: [
			vehicle incrementNbRentals.
			vehicle state: (RentedState new initializeWithVehicle: vehicle) ]
		ifFalse: [
			self outOfService.
			self error: 'This vehicle has reached the maxnumber of rentals.' ]
]
