Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#instVars : [
		'count'
	],
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'tests' }
CounterTest >> testCountIsSetAndRead [ 
	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7
	
]

{ #category : 'tests' }
CounterTest >> testDecrement [ 
	| c |
	c := Counter new.
	c count: 2 ; decrement; decrement.
	self assert: c count equals: 0
]

{ #category : 'tests' }
CounterTest >> testIncrement [ 
	| c |
	c := Counter new.
	c count: 0 ; increment; increment.
	self assert: c count equals: 2
]

{ #category : 'tests' }
CounterTest >> testInitialization [ 
	| c |
	c := Counter new.
	c initialize.
	self assert: c count equals: 0
]

{ #category : 'tests' }
CounterTest >> testPrintOn [ 
	| c |
	c := Counter new printString 
]

{ #category : 'tests' }
CounterTest >> testStartingAt5 [ 
	self assert: (Counter startingAt: 5) count equals: 5
]
