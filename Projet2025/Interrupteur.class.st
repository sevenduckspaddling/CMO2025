Class {
	#name : 'Interrupteur',
	#superclass : 'Composant',
	#category : 'Projet2025',
	#package : 'Projet2025'
}

{ #category : 'accessing' }
Interrupteur >> description [
	
	^self class name ,',   id : ', self id printString .
]

{ #category : 'accessing' }
Interrupteur >> etat [ 
	^self
]
