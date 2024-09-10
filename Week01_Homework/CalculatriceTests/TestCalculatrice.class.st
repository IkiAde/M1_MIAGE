Class {
	#name : 'TestCalculatrice',
	#superclass : 'TestCase',
	#category : 'CalculatriceTests',
	#package : 'CalculatriceTests'
}

{ #category : 'tests' }
TestCalculatrice >> testAverageOfNumbers [

	| calculator |
	calculator := Calculatrice new.

	calculator numbers: #( 3 4 5 ).

	self assert: calculator averageOfNumbers equals:4 
]

{ #category : 'tests' }
TestCalculatrice >> testSumOfTheCollection [

	| calculator |
	calculator := Calculatrice new.

	calculator numbers: #( 3 4 5 ).

	self assert: calculator sumOfTheNumbers equals: 12
]
