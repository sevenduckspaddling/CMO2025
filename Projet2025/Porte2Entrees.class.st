Class {
	#name : 'Porte2Entrees',
	#superclass : 'Porte',
	#instVars : [
		'in1',
		'in2'
	],
	#category : 'Projet2025',
	#package : 'Projet2025'
}

{ #category : 'accessing' }
Porte2Entrees >> description [
    ^ super description, ' in1: ', 
        (in1 isNil 
            ifTrue: [ 'non connecté' ]
            ifFalse: [ in1 description ]), 
        ' in2: ', 
        (in2 isNil 
            ifTrue: [ 'non connecté' ]
            ifFalse: [ in2 description ])
]

{ #category : 'operations' }
Porte2Entrees >> etat [
    ^ { in1 etat . in2 etat }
]

{ #category : 'accessing' }
Porte2Entrees >> in1 [
	^in1
]

{ #category : 'accessing' }
Porte2Entrees >> in1: aComposant [
	in1 := aComposant
]

{ #category : 'accessing' }
Porte2Entrees >> in2 [
	^in2 
]

{ #category : 'accessing' }
Porte2Entrees >> in2: aComposant [
	in2 := aComposant
]
