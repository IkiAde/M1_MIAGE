Class {
	#name : 'ProductTest',
	#superclass : 'TestCase',
	#instVars : [
		'yaourt',
		'lait'
	],
	#category : 'Product-Tests',
	#package : 'Product-Tests'
}

{ #category : 'running' }
ProductTest >> setUp [

	super setUp.
	
	yaourt := Product newProductNamed: 'yaourt' Price: 12 Brand: 'danone'.

	lait := Product newProductNamed: 'lait' Price: 15 Brand: 'bledina'
]

{ #category : 'tests' }
ProductTest >> testCreationOfNewProduct [

	| product |
	product := Product newProductNamed: 'pain' Price: 1 Brand: 'leclerc'.

	self assert: product name equals: 'pain'.
	self assert: product price equals: 1.
	self assert: product brand equals: 'leclerc'
]

{ #category : 'tests' }
ProductTest >> testMoreExpensiveBetweenTwoProducts [

self assert: lait name equals: (Product moreExpensiveBetween: lait And: yaourt)
]
