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
    ^self class name, ' (', self id asString, ') in: ', in description

]

{ #category : 'operations' }
Not >> etat [ 
	^in etat not
]

{ #category : 'evaluating' }
Not >> evaluate [
    ^in evaluate not

]

{ #category : 'operations' }
Not >> in [ 
	^in
]

{ #category : 'evaluating' }
Not >> in: aComposant [
	in := aComposant
	
]
