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
	^super description 
]

{ #category : 'accessing' }
Or >> state [
    ^ (in1 state) or: (in2 state)
]
