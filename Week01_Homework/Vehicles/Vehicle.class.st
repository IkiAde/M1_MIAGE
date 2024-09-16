Class {
	#name : 'Vehicle',
	#superclass : 'Object',
	#instVars : [
		'id',
		'nbRentals',
		'maxNbRentals'
	],
	#category : 'Vehicles',
	#package : 'Vehicles'
}

{ #category : 'accessing' }
Vehicle >> id [ 
^ id
]

{ #category : 'accessing' }
Vehicle >> id: anId [

	id := anId
]

{ #category : 'accessing' }
Vehicle >> initialize [

	super initialize.
id:= (Random new nextInteger: 20).
	nbRentals := 0.
	maxNbRentals := 10
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
