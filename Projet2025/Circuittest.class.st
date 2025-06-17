Class {
	#name : 'Circuittest',
	#superclass : 'TestCase',
	#instVars : [
		'i1',
		'i2',
		'i3',
		'van'
	],
	#category : 'Projet2025',
	#package : 'Projet2025'
}

{ #category : 'running' }
Circuittest >> setUp [
	|n a o|
	i1 := Interrupteur new.
	i2 := Interrupteur new.
	i3 := Interrupteur new.
	n := Not new.
	a := And new. 
	o := Or new. 
	van := Vanne new. 
	o in1: i1.
	o in2: i2.
	n in: i3.
	a in1: o.
	a in2: n. 
	van in: a. 
]

{ #category : 'tests' }
Circuittest >> testCircuiti1ONi2ONi3OFF [ 
	|var|
	i1 on.
	i2 on.
	i3 off. 
	var := van state.
	self assert: var equals: true
]

{ #category : 'tests' }
Circuittest >> testCircuiti1ONi2ONi3ON [ 
	|var|
	i1 on.
	i2 on.
	i3 on. 
	var := van state.
	self assert: var equals: false
]
