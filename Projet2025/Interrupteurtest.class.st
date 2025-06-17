Class {
	#name : 'Interrupteurtest',
	#superclass : 'Composanttest',
	#category : 'Projet2025',
	#package : 'Projet2025'
}

{ #category : 'tests' }
Interrupteurtest >> testDescription [
	|int1 var var2 var3|
	int1 := Interrupteur new.
	var := int1 description.
	var2 := int1 id printString.
	var3 := 'Interrupteur,   id : ', var2.
	self assert: var equals: var3.
]

{ #category : 'tests' }
Interrupteurtest >> testId [
	|int1 var|
	int1 := Interrupteur new.
	var := int1 id.
	self assert: int1 id equals: var.
	
]

{ #category : 'tests' }
Interrupteurtest >> testOff [ 
	|int1 var|
	int1 := Interrupteur new. 
	int1 off. 
	var := int1 state.
	self assert: var equals: false
]

{ #category : 'tests' }
Interrupteurtest >> testOn [
	|int1 var|
	int1 := Interrupteur new. 
	int1 on. 
	var := int1 state.
	self assert: var equals: true
	
]
