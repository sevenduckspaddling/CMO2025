Class {
	#name : 'Counter',
	#superclass : 'Object',
	#instVars : [
		'count'
	],
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'accessing' }
Counter class >> startingAt: anInteger [
	^self new count: anInteger 
]

{ #category : 'accessing' }
Counter >> count [ 
	^ count
]

{ #category : 'accessing' }
Counter >> count: anInteger [ 
	count := anInteger
]

{ #category : 'operation' }
Counter >> decrement [
	count := count - 1

]

{ #category : 'operation' }
Counter >> increment [
	count := count + 1
]

{ #category : 'initialization' }
Counter >> initialize [ 
	count := 0
]

{ #category : 'printing' }
Counter >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' width value ' , count printString.
]

{ #category : 'operation' }
Counter >> startingAt: anInteger [
	count := count - count + anInteger 
]
