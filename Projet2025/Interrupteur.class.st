Class {
	#name : 'Interrupteur',
	#superclass : 'Composant',
	#instVars : [
		'etat',
		'state'
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
	^self
]

{ #category : 'evaluating' }
Interrupteur >> evaluate [
    ^state asSignal

]

{ #category : 'initialization' }
Interrupteur >> initialize [
    super initialize.
    state := false.

]

{ #category : 'changing state' }
Interrupteur >> off [ 
	state := false
]

{ #category : 'changing state' }
Interrupteur >> on [
	state := true
]

{ #category : 'accessing' }
Interrupteur >> state [ 
	^state
]
