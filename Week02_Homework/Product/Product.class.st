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
Product class >> moreExpensiveBetween: product1 And: product2 [

	product1 price > product2 price
		ifTrue: [ ^product1 name ]
		ifFalse: [ ^product2 name ]
]

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

{ #category : 'as yet unclassified' }
Product >> changePrice: aPrice [

price:= aPrice
]

{ #category : 'as yet unclassified' }
Product >> displayProduct [

	^ 'Product: ' , self name , ' ,' , 'price: ' , self price asString, ' ,'
	  , 'brand: ' , self brand
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
