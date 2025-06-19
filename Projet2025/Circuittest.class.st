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
Circuittest >> testCircuitContientBienInterrupteursEtVannes [
    | not and circuit |
    i1 := Interrupteur new.
    i2 := Interrupteur new.
    van := Vanne new.
    not := Not new.
    and := And new.
    not in: i1.
    and in1: i2; in2: not.
    van in: and.
    circuit := Circuit nom: 'TestCircuit' composants: {i1. i2. van. not. and}.
    self assert: circuit entrees printString equals: 'a SortedCollection(an Interrupteur an Interrupteur)'.
    self assert: circuit sorties printString equals: 'a SortedCollection(a Vanne)'.

]

{ #category : 'tests' }
Circuittest >> testCircuiti1ONi2ONi3OFF [ 
	|var|
	i1 on.
	i2 on.
	i3 off. 
	var := van etat.
	self assert: var equals: true
]

{ #category : 'tests' }
Circuittest >> testCircuiti1ONi2ONi3ON [ 
	|var|
	i1 on.
	i2 on.
	i3 on. 
	var := van etat.
	self assert: var equals: false
]

{ #category : 'compatibility tests' }
Circuittest >> testEvaluationCircuitLogique [
    | not and vanne circuit signal |
    
    i1 := Interrupteur new on.
    i2 := Interrupteur new off.

    not := Not new.
    not in: i1.

    and := And new.
    and in1: i2; in2: not.

    vanne := Vanne new.
    vanne in: and.

    circuit := Circuit nom: 'CircuitTest' composants: { i1. i2. not. and. vanne }.

    signal := circuit evaluate.
    self assert: signal value equals: false.



]

{ #category : 'compatibility tests' }
Circuittest >> testLibrairieSignaux [
    | haut bas |
    haut := SignalHaut new.
    bas := SignalBas new.

    self assert: haut value equals: true.
    self assert: bas value equals: false.
    self assert: (haut not value) equals: false.
    self assert: (bas not value) equals: true.
    self assert: ((haut and: haut) value) equals: true.
    self assert: ((haut and: bas) value) equals: false.
    self assert: ((bas or: haut) value) equals: true.
]
