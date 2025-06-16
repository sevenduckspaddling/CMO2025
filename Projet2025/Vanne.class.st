Class {
	#name : 'Vanne',
	#superclass : 'Composant',
	#instVars : [
		'in',
		'etat'
	],
	#category : 'Projet2025',
	#package : 'Projet2025'
}

{ #category : 'accessing' }
Vanne >> description [
    ^ super description, ' in: ', 
        (in isNil 
            ifTrue: [ 'non connecté' ]
            ifFalse: [ in description ])
]

{ #category : 'operations' }
Vanne >> etat [
    ^ in etat
]

{ #category : 'accessing' }
Vanne >> in [ 
	^in
]

{ #category : 'accessing' }
Vanne >> in: aComposant [
	 in := aComposant
]
