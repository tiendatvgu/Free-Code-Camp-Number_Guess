#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

echo 'Enter your username:'
read USERNAME
USER_NAME=$($PSQL "select name from users where name='$USERNAME'")
if [[ -z $USER_NAME ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_NAME=$($PSQL "insert into users(name) values('$USERNAME')")
else
  GAMES_PLAYED=$($PSQL "select count(*) from games inner join users using(user_id) where name='$USERNAME'")
  BEST_GAME=$($PSQL "select min(point) from games left join users using(user_id) where name='$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

RESULT=$(( $RANDOM % 1000 + 1 ))
echo -e '\nGuess the secret number between 1 and 1000:'
read INPUT
TRIES=0
while [[ ! $INPUT -eq $RESULT ]]
do
TRIES=$((TRIES +1))
if [[ ! $INPUT =~ ^[0-9]+$ ]]
then
  echo 'That is not an integer, guess again:'
  read INPUT
else
  if [[ $INPUT -lt $RESULT ]]
  then
    echo "It's higher than that, guess again:"
    read INPUT
  elif [[ $INPUT -gt $RESULT ]]
  then
    echo "It's lower than that, guess again:"
    read INPUT
  fi
fi
done
USER_ID=$($PSQL "select user_id from users where name='$USERNAME'")
INSERT_GAME=$($PSQL "insert into games(point,user_id) values($TRIES,$USER_ID)")
echo "You guessed it in $TRIES tries. The secret number was $RESULT. Nice job!" 