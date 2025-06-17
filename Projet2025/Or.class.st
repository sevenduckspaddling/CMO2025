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

{ #category : 'evaluating' }
Or >> evaluate [
    ^(in1 evaluate) or: (in2 evaluate)

]

{ #category : 'accessing' }
Or >> state [
    ^ (in1 state) or: (in2 state)
]
