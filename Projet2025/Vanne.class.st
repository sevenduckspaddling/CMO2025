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

{ #category : 'checking' }
Vanne >> estVanne [ 
	^true 
]

{ #category : 'operations' }
Vanne >> etat [
    ^ in etat
]

{ #category : 'evaluating' }
Vanne >> evaluate [
    ^in evaluate

]

{ #category : 'accessing' }
Vanne >> in [ 
	^in
]

{ #category : 'accessing' }
Vanne >> in: aComposant [
	 in := aComposant
]
