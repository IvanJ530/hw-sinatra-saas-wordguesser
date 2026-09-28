Feature: gain access to the word without guessing it

    As a adversary playing Wordguesser
    So that I can see the word without ever entering a letter
    I want to navigate to a ending page and see the word

Scenario: navigate to lose page
  Given I start a new game with word "snake"
  When I try to go to the URL "/lose"
  Then I should be on the show page
  And the word should read "-----"

Scenario: navigate to win page
  Given I start a new game with word "snake"
  When I try to go to the URL "/win"
  Then I should be on the show page
  And the word should read "-----"

Scenario: cannot access win page before starting a game
  Given I am on the home page
  When I try to go to the URL "/win"
  Then I should be on the new game page

Scenario: cannot access lose page before starting a game
  Given I am on the home page
  When I try to go to the URL "/lose"
  Then I should be on the new game page

Scenario: cannot show a game before starting one
  Given I am on the home page
  When I try to go to the URL "/show"
  Then I should be on the new game page
