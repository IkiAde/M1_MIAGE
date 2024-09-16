Class {
	#name : 'Vehicle',
	#superclass : 'Object',
	#instVars : [
		'id',
		'nbRentals',
		'maxNbRentals',
		'description',
		'state'
	],
	#category : 'Vehicles',
	#package : 'Vehicles'
}

{ #category : 'nil' }
Vehicle >> available [ 
state available
]

{ #category : 'as yet unclassified' }
Vehicle >> checkMaximumRental [
"Checks if the vehicle has reached the maximum number of rentals."
^ (self nbRentals < self maxNbRentals) 
]

{ #category : 'accessing' }
Vehicle >> description [

	^ description
]

{ #category : 'accessing' }
Vehicle >> description: aDescription [

	description := aDescription
]

{ #category : 'accessing' }
Vehicle >> id [ 
^ id
]

{ #category : 'accessing' }
Vehicle >> id: anId [

	id := anId
]

{ #category : 'as yet unclassified' }
Vehicle >> incrementNbRentals [
nbRentals:=  nbRentals+1
]

{ #category : 'accessing' }
Vehicle >> initialize [

	super initialize.
	id := Random new nextInteger: 20.
	nbRentals := 0.
	maxNbRentals := 10.
	state:= AvailableState new initializeWithVehicle: self.
]

{ #category : 'accessing' }
Vehicle >> maxNbRentals [

	 ^ maxNbRentals
]

{ #category : 'accessing' }
Vehicle >> maxNbRentals: aNumber [

	 maxNbRentals:= aNumber
]

{ #category : 'accessing' }
Vehicle >> nbRentals [

	^ nbRentals
]

{ #category : 'accessing' }
Vehicle >> nbRentals: aNumber [

	 nbRentals:= aNumber
]

{ #category : 'nil' }
Vehicle >> outOfService [ 

	state outOfService 
]

{ #category : 'nil' }
Vehicle >> rented [ 

	state rented
]

{ #category : 'accessing' }
Vehicle >> state [

	^ state
]

{ #category : 'accessing' }
Vehicle >> state: aState [

	state := aState
]

{ #category : 'as yet unclassified' }
Vehicle >> vehicleDescription [

	^ 'This a ', self description.
]
