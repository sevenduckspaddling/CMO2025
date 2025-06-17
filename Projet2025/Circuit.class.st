Class {
	#name : 'Circuit',
	#superclass : 'Object',
	#instVars : [
		'nom',
		'composants',
		'entrees',
		'sorties'
	],
	#category : 'Projet2025',
	#package : 'Projet2025'
}

{ #category : 'factory' }
Circuit class >> nom: aNom composants: uneCollection [
    ^ self new
        initializeNom: aNom composants: uneCollection;
        yourself

]

{ #category : 'accessing' }
Circuit >> composants [
    ^composants
]

{ #category : 'accessing' }
Circuit >> entrees [
    ^entrees

]

{ #category : 'evaluating' }
Circuit >> evaluate [
    | signal |
    signal := sorties first evaluate.
    Transcript
        show: 'Vanne ';
        show: sorties first id;
        show: ' → ';
        show: signal value asString;
        cr.
    ^ signal

]

{ #category : 'initialization' }
Circuit >> initializeNom: aNom composants: uneCollection [
    nom := aNom.
    composants := uneCollection asSortedCollection: [ :a :b | a id < b id ].
    entrees := composants select: [ :each | each estInterrupteur ].
    sorties := composants select: [ :each | each estVanne ].
]

{ #category : 'accessing' }
Circuit >> nom [
    ^nom
]

{ #category : 'accessing' }
Circuit >> sorties [
    ^sorties
]
