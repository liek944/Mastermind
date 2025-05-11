# Mastermind Game

This is a command-line implementation of the classic Mastermind board game, created as part of [The Odin Project](https://www.theodinproject.com) curriculum. In this game, you'll try to guess a secret code made up of colored pegs within a limited number of attempts.

## Game Description

Mastermind is a code-breaking game where one player creates a secret code and another player tries to guess it. In this implementation, the computer generates a random secret code, and you (the player) try to guess it.

## How to Play

1. The computer will generate a secret code consisting of 4 colors
2. Available colors are: RED, GREEN, BLUE, YELLOW, ORANGE, and PURPLE
3. You have 10 attempts to guess the correct code
4. After each guess, you'll receive feedback:
   - Number of colors in the correct position
   - Number of correct colors but in wrong positions

## Game Rules

- The secret code is 4 colors long
- Colors can be repeated
- You must enter exactly 4 valid colors for each guess
- You have 10 attempts to guess the code correctly

## Getting Started

### Prerequisites

- Ruby installed on your system

### Running the Game

1. Clone this repository or download the `mastermind_game.rb` file
2. Open your terminal
3. Navigate to the game's directory
4. Run the game using:
```bash
ruby mastermind_game.rb
```

## Game Interface

- Enter your guesses as space-separated colors
- Example input: `RED BLUE GREEN YELLOW`
- The game will provide feedback after each guess
- The game ends when you either:
  - Guess the code correctly (Win!)
  - Use all 10 attempts (Game Over)

## Project Details

This project is part of The Odin Project's Ruby curriculum, demonstrating the use of:
- Arrays and Array manipulation
- Methods and control flow
- User input handling
- Game logic implementation

## Acknowledgments

- [The Odin Project](https://www.theodinproject.com) - The web curriculum this project is based on
- Original Mastermind board game by Mordecai Meirowitz