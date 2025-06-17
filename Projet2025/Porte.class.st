Class {
	#name : 'Porte',
	#superclass : 'Composant',
	#category : 'Projet2025',
	#package : 'Projet2025'
}

{ #category : 'accessing' }
Porte >> description [
	^self class name ,',   id : ', self id printString .
]
