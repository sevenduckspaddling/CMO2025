Class {
	#name : 'Interrupteur',
	#superclass : 'Composant',
	#instVars : [
		'etat'
	],
	#category : 'Projet2025',
	#package : 'Projet2025'
}

{ #category : 'accessing' }
Interrupteur >> description [
	^self class name ,',   id : ', self id printString .
]

{ #category : 'checking' }
Interrupteur >> estInterrupteur [ 
	^true
]

{ #category : 'accessing' }
Interrupteur >> etat [ 
	^etat
]

{ #category : 'evaluating' }
Interrupteur >> evaluate [
    ^self etat asSignal

]

{ #category : 'initialization' }
Interrupteur >> initialize [
    super initialize.
    etat := false.

]

{ #category : 'changing state' }
Interrupteur >> off [ 
	etat := false
]

{ #category : 'changing state' }
Interrupteur >> on [
	etat := true
]
