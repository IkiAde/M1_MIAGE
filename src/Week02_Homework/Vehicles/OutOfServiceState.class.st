Class {
	#name : 'OutOfServiceState',
	#superclass : 'VehicleState',
	#category : 'Vehicles',
	#package : 'Vehicles'
}

{ #category : 'as yet unclassified' }
OutOfServiceState >> available [ 

	self error: 'The vehicle is currently out of service.'
]

{ #category : 'as yet unclassified' }
OutOfServiceState >> outOfService [ 
"Handle the case where the vehicle is already out Of Service"

	self error: 'The vehicle is already out of service.'
]

{ #category : 'as yet unclassified' }
OutOfServiceState >> rented [

	self error: 'The vehicle is currently out of service.'
]
