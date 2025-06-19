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

{ #category : 'operations' }
Or >> etat [ 	
	^in1 etat or: in2 etat
]

{ #category : 'evaluating' }
Or >> evaluate [
    ^(in1 evaluate) or: (in2 evaluate)

]
