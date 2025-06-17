Class {
	#name : 'Composanttest',
	#superclass : 'TestCase',
	#category : 'Projet2025',
	#package : 'Projet2025'
}

{ #category : 'tests' }
Composanttest >> testEtatcheck [
|and1 or1 var1 var2|
and1 := And new. 
and1 in1: Interrupteur new. 
and1 in2: Interrupteur new.
var1 := and1 etatCheck.
or1 := Or new.
or1 in1: Interrupteur new.
var2 := or1 etatCheck. 
self assert: var1 printString, var2 equals: 'an Array(an Interrupteur an Interrupteur)','Le composant n est pas connecte.'.
]
