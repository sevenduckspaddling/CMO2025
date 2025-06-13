Class {
	#name : 'Or',
	#superclass : 'Porte2Entrees',
	#instVars : [
		'etat'
	],
	#category : 'Projet2025',
	#package : 'Projet2025'
}

{ #category : 'accessing' }
Or >> description [
	
	^self class name ,',   id : ', self id printString .
]
