Class {
	#name : 'Product',
	#superclass : 'Object',
	#instVars : [
		'name',
		'price',
		'brand'
	],
	#category : 'Product',
	#package : 'Product'
}

{ #category : 'instance creation' }
Product class >> newProductNamed: aName Price: aPrice Brand: aBrand [

	^ self new
		  name: aName;
		  price: aPrice;
		brand: aBrand;
		  yourself
]

{ #category : 'accessing' }
Product >> brand [

	^ brand
]

{ #category : 'accessing' }
Product >> brand: aBrand [

	brand := aBrand
]

{ #category : 'accessing' }
Product >> name [

	^ name
]

{ #category : 'accessing' }
Product >> name: anObject [

	name := anObject
]

{ #category : 'accessing' }
Product >> price [

	^ price
]

{ #category : 'accessing' }
Product >> price: anObject [

	price := anObject
]
