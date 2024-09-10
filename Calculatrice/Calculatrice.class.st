Class {
	#name : 'Calculatrice',
	#superclass : 'Object',
	#instVars : [
		'numbers'
	],
	#category : 'Calculatrice',
	#package : 'Calculatrice'
}

{ #category : 'initialization' }
Calculatrice >> initialize [

	super initialize.
	numbers := OrderedCollection new
]

{ #category : 'initialization' }
Calculatrice >> numbers [

	^ numbers
]

{ #category : 'initialization' }
Calculatrice >> numbers: aCollection [

	numbers := aCollection
]

{ #category : 'as yet unclassified' }
Calculatrice >> sumOfTheNumbers [

	| somme |
	somme:=0.
	self numbers do: [ :nb | somme:= somme + nb ].
	^ somme
]
