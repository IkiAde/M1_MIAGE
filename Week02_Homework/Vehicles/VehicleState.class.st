Class {
	#name : 'VehicleState',
	#superclass : 'Object',
	#instVars : [
		'vehicle'
	],
	#category : 'Vehicles',
	#package : 'Vehicles'
}

{ #category : 'nil' }
VehicleState >> available [

^self subclassResponsibility 
]

{ #category : 'accessing' }
VehicleState >> initializeWithVehicle: aVehicle [

	vehicle := aVehicle
]

{ #category : 'as yet unclassified' }
VehicleState >> outOfService [

	^ self subclassResponsibility
]

{ #category : 'as yet unclassified' }
VehicleState >> rented [

	^ self subclassResponsibility
]

{ #category : 'accessing' }
VehicleState >> vehicle [

	^ vehicle
]

{ #category : 'accessing' }
VehicleState >> vehicle: anObject [

	vehicle := anObject
]
