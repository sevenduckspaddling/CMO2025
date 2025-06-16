Class {
	#name : 'Not',
	#superclass : 'Porte',
	#instVars : [
		'in',
		'etat'
	],
	#category : 'Projet2025',
	#package : 'Projet2025'
}

{ #category : 'accessing' }
Not >> description [
    ^ super description, ' in: ', 
        (in isNil 
            ifTrue: [ 'non connecté' ]
            ifFalse: [ in description ])
]

{ #category : 'operations' }
Not >> etat [ 
	^in etat
]

{ #category : 'operations' }
Not >> in [ 
	^in
]

{ #category : 'evaluating' }
Not >> in: aComposant [
	in := aComposant
	
]
