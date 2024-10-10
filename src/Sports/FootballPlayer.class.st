"
""клас футболіста""
"
Class {
	#name : 'FootballPlayer',
	#superclass : 'Sportsperson',
	#instVars : [
		'club',
		'annualContract',
		'goalsScored'
	],
	#category : 'Sports',
	#package : 'Sports'
}

{ #category : 'accessing' }
FootballPlayer >> displayInformation [
    ^ String streamContents: [ :stream |
        stream
            nextPutAll: (super displayInformation); cr;
            nextPutAll: 'Club: '; nextPutAll: club; cr;
            nextPutAll: 'Annual Contract: '; nextPutAll: annualContract asString; cr;
            nextPutAll: 'Goals Scored: '; nextPutAll: goalsScored asString; cr;
            nextPutAll: 'Total Earnings: ', self totalEarnings asString; cr ].
]

{ #category : 'initialization' }
FootballPlayer >> initializeWithLastName: aLastName age: anAge nationality: aNationality club: aClub contract: aContract goals: goalsCount [
    super initializeWithLastName: aLastName age: anAge nationality: aNationality.
    club := aClub.
    annualContract := aContract.
    goalsScored := goalsCount.
]

{ #category : 'accessing' }
FootballPlayer >> totalEarnings [
    ^ annualContract * (1 + (goalsScored * 0.01)).
]