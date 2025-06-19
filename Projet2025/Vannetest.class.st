Class {
	#name : 'Vannetest',
	#superclass : 'Composanttest',
	#category : 'Projet2025',
	#package : 'Projet2025'
}

{ #category : 'tests' }
Vannetest >> testvanneDescription [ 
	|van1 var var2 var3|
	van1 := Vanne new.
	var := van1 description.
	var2 := van1 id printString.
	var3 := #'Vanne ','(', var2,') ', 'in: non connecté'.
	self assert: var equals: var3.
	
]

{ #category : 'tests' }
Vannetest >> testvanneEtat [
|van1 var|
van1 := Vanne new.
van1 in: Interrupteur new on.
var := van1 etat.
self assert: var printString equals: 'true'.
]

{ #category : 'tests' }
Vannetest >> testvannestate [ 
	|i1 van1 var|
	i1 := Interrupteur new.

	van1 := Vanne new.
	van1 in: i1.
	i1 on. 
	var := van1 etat.
	self assert: var equals: true
]
