Class {
	#name : 'Portetest',
	#superclass : 'Composanttest',
	#category : 'Projet2025',
	#package : 'Projet2025'
}

{ #category : 'tests' }
Portetest >> testandState [ 
	|i1 i2 a var|
i1 := Interrupteur new.
i2 := Interrupteur new.
a := And new.
a in1: i1.
a in2: i2.
i1 on.
i2 off.
var := a state.
self assert: var equals: false




]

{ #category : 'tests' }
Portetest >> testnotDescription [ 
	|not1 var var2 var3|
	not1 := Not new.
	var := not1 description.
	var2 := not1 id printString.
	var3 := #'Not ','(', var2,') ', 'in: non connecté'.
	self assert: var equals: var3.

	
]

{ #category : 'tests' }
Portetest >> testnotEtat [
|not1 var|
not1 := Not new.
not1 in: Interrupteur new.
var := not1 etat.
self assert: var printString equals: 'an Interrupteur'.
]

{ #category : 'tests' }
Portetest >> testnotstate [ 
	|i1 i2 n var|
	i1 := Interrupteur new.
	i2 := Interrupteur new.

	n := Not new.
	n in: i1.
	i1 on. 
	var := n state.
	self assert: var equals: false


]

{ #category : 'tests' }
Portetest >> testorState [ 
	|i1 i2 o var|
	i1 := Interrupteur new.
	i2 := Interrupteur new.
	o := Or new.
	o in1: i1.
	o in2: i2.
	i1 off.
	i2 on.
	var := o state.
	self assert: var equals: true
]

{ #category : 'tests' }
Portetest >> testp2eEtat [
	|and1 var var2 var3 var4|
	and1 := And new.
	and1 in1: Interrupteur new.
	var4 := and1 in1 description.
	var := and1 description.
	var2 := and1 id printString.
	var3 := #'And ','(', var2,') ', 'in1: ',var4,' in2: non connecté'.
	self assert: var equals: var3.

]
