Class {
	#name : 'SignalBas',
	#superclass : 'Signal',
	#category : 'Projet2025',
	#package : 'Projet2025'
}

{ #category : 'evaluating' }
SignalBas >> and: aSignal [
    ^self
]

{ #category : 'evaluating' }
SignalBas >> not [
    ^SignalHaut new

]

{ #category : 'evaluating' }
SignalBas >> or: aSignal [
    ^aSignal value ifTrue: [SignalHaut new] ifFalse: [self]

]

{ #category : 'evaluating' }
SignalBas >> value [
    ^false

]
