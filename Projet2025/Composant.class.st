Class {
	#name : 'Composant',
	#superclass : 'Object',
	#category : 'Projet2025',
	#package : 'Projet2025'
}

{ #category : 'operations' }
Composant >> description [
    ^ self class name, ' (', self id asString, ')'
]

{ #category : 'checking' }
Composant >> etatCheck [
    ^ [ self etat ] on: Error do: [ :e | 'Le composant n est pas connecte.' ]
]

{ #category : 'operations' }
Composant >> id [ 
	^self hash 
]
