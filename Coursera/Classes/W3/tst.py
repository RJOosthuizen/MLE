VOWEL_COST = 250
LETTERS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
VOWELS = 'AEIOU'

import random

# Write the WOFPlayer class definition (part A) here
class WOFPlayer:

    def __init__(self, n):
        self.name = n
        self.prizeMoney = 0
        self.prizes = []

    def addMoney(self, amt):
        self.prizeMoney += amt

    def goBankrupt(self):
        self.prizeMoney = 0

    def addPrize(self, prize):
        self.prizes.append(prize)

    def __str__(self):
        return '{} (${})'.format(self.name, self.prizeMoney)

# Write the WOFHumanPlayer class definition (part B) here
class WOFHumanPlayer(WOFPlayer):

    def getMove(self, category, obscuredPhrase, guessed):
        return '{} has ${}\n\nCategory: {}\nPhrase: {}\nGuessed: {}\n\nGuess a letter, phrase, or type \'exit\' or \'pass\':'.format(self.name, self.PrizeMoney, category, obscuredPhrase, guessed)

# Write the WOFComputerPlayer class definition (part C) here
class WOFComputerPlayer(WOFPlayer):

    SORTED_FREQUENCIES = 'ZQXJKVBPYGFWMUCLDRHSNIOATE'

    def __init__(self, n, d):
        self.name = n
        self.difficulty = d
        self.prizeMoney = 0
        self.prizes = []

    def smartCoinFlip(self):
        return random.randint(1, 10) > self.difficulty

    def getPossibleLetters(self, guessed):
        if self.prizeMoney >= VOWEL_COST:
            return [l for l in LETTERS if l not in guessed]
        else:
            without_vowels = [l for l in LETTERS if l not in VOWELS]
            return [l for l in without_vowels if l not in guessed]

    def getMove(self, category, obscuredPhrase, guessed):
        possible_letters = self.getPossibleLetters(guessed)
        if len(possible_letters) == 0:
            return 'pass'
        else:
            if self.smartCoinFlip() == True:
                srtd_without_guess = [l for l in self.SORTED_FREQUENCIES if l not in possible_letters]
                return srtd_without_guess[-1]
            else:
                return random.choice(self.getPossibleLetters(guessed))



guessed = ['J','X','P','S','E','Z','G','C','O','A']

cp1 = WOFComputerPlayer('AI', 1)

# print(cp1)
print(cp1.getPossibleLetters(guessed))
print(cp1.getMove('n','n',guessed))

SORTED_FREQUENCIES = 'ZQXJKVBPYGFWMUCLDRHSNIOATE'
#srtd_without_guess = [l for l in SORTED_FREQUENCIES if l in cp1.getPossibleLetters(guessed)]
#print(srtd_without_guess)
print(random.choice(cp1.getPossibleLetters(guessed)))




without_vowels = [l for l in LETTERS if l not in VOWELS]
last = [l for l in without_vowels if l not in guessed]
print(without_vowels)
print(last)
