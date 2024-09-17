Class {
	#name : 'VehiclesTest',
	#superclass : 'TestCase',
	#instVars : [
		'harley',
		'tesla'
	],
	#category : 'Vehicles-Tests',
	#package : 'Vehicles-Tests'
}

{ #category : 'running' }
VehiclesTest >> setUp [

	super setUp.
	harley := Bike new.
	tesla := Car new
]

{ #category : 'tests' }
VehiclesTest >> testCheckMaximumRental [
	"The maxNbRentals is inially 10"

	tesla maxNbRentals: 2.
	tesla rented.
	tesla available.
	tesla rented.
	
	self assert: tesla checkMaximumRental equals: true
]

{ #category : 'tests' }
VehiclesTest >> testNbRentals [
"The nbRentals is inially 0"
harley rented.
harley available.
harley rented.

self assert: harley nbRentals equals:2.
]

{ #category : 'tests' }
VehiclesTest >> testVehicleDescription [ 

self assert: tesla vehicleDescription equals: 'This is a Car'
]
