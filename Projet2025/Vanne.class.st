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
    ^self class name, ' (', self id asString, ') in: ', in description
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
