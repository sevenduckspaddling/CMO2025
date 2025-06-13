Class {
	#name : 'And',
	#superclass : 'Porte2Entrees',
	#instVars : [
		'etat'
	],
	#category : 'Projet2025',
	#package : 'Projet2025'
}

{ #category : 'accessing' }
And >> description [
	
	^self class name ,',   id : ', self id printString .
]
