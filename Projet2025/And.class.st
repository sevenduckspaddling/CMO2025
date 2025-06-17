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
	^super description 
]

{ #category : 'accessing' }
And >> state [
    ^ (in1 state) and: (in2 state)
]
