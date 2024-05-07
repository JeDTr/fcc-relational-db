#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
read USER_NAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USER_NAME'")

if [[ -z $USER_ID ]]
then
  echo -e "\nWelcome, $USER_NAME! It looks like this is your first time here."
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users (name) VALUES ('$USER_NAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USER_NAME'")
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM number_guess WHERE user_id='$USER_ID'")
  FEWEST_GUESSES=$($PSQL "SELECT MIN(number_guess) FROM number_guess WHERE user_id='$USER_ID'")
  echo -e "\nWelcome back, $USER_NAME! You have played $GAMES_PLAYED games, and your best game took $FEWEST_GUESSES guesses."
fi

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
NUMBER_GUESS=0

GUESS() {
  echo -e $1
  read INPUT_NUMBER

  if [[ ! $INPUT_NUMBER =~ ^[0-9]+$ ]]
  then
    NUMBER_GUESS=$((NUMBER_GUESS + 1))
    GUESS "That is not an integer, guess again:"
  elif [[ $INPUT_NUMBER > $SECRET_NUMBER ]]
  then
    NUMBER_GUESS=$((NUMBER_GUESS + 1))
    GUESS "It's lower than that, guess again:"
  elif [[ $INPUT_NUMBER < $SECRET_NUMBER ]]
  then
    NUMBER_GUESS=$((NUMBER_GUESS + 1))
    GUESS "It's higher than that, guess again:"
  else
    NUMBER_GUESS=$((NUMBER_GUESS + 1))
    echo "You guessed it in $NUMBER_GUESS tries. The secret number was $SECRET_NUMBER. Nice job!"
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO number_guess (user_id, number_guess) VALUES ($USER_ID, $NUMBER_GUESS)")
  fi
}

GUESS "Guess the secret number between 1 and 1000:"




