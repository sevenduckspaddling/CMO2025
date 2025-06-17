Class {
	#name : 'SignalHaut',
	#superclass : 'Signal',
	#category : 'Projet2025',
	#package : 'Projet2025'
}

{ #category : 'evaluating' }
SignalHaut >> and: aSignal [
    ^aSignal value ifTrue: [self] ifFalse: [SignalBas new]

]

{ #category : 'evaluating' }
SignalHaut >> not [
    ^SignalBas new

]

{ #category : 'evaluating' }
SignalHaut >> or: aSignal [
    ^self

]

{ #category : 'evaluating' }
SignalHaut >> value [
    ^true
]
