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

{ #category : 'operations' }
And >> etat [ 	
	^in1 etat and: in2 etat
]

{ #category : 'evaluating' }
And >> evaluate [
    ^(in1 evaluate) and: (in2 evaluate)

]
