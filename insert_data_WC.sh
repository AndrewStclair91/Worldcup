#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE TABLE games, teams")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

do

if [[ $WINNER != "winner" ]]
then
TEAMS=$($PSQL "SELECT name FROM TEAMS where name= '$WINNER'")

if [[ -z $TEAM ]]
then 
$INSERT_TEAM=$($PSQL "INSERT into TEAMS(name)VALUES ('$WINNER')")
if
[[ $INSERT_TEAM == "INSERT 0 1" ]]
then
echo Inserted into teams, $WINNER
fi
fi
fi

if [[ $OPPONENT != "opponent"  ]]
then
LTEAM=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
if [[ -z $LTEAM ]]
then
$INSERT_LTEAM=$($PSQL "INSERT into TEAMS(name)VALUES ('$OPPONENT')") 
if
[[ $INSERT_LTEAM == "INSERT 0 1" ]]
then
echo Inserted into teams, $OPPONENT
fi
LTEAM=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
fi
fi

WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

$($PSQL "INSERT into games(year, round, winner_goals, opponent_goals, winner_id, opponent_id)VALUES ($YEAR, '$ROUND', $WINNER_GOALS, $OPPONENT_GOALS, $WINNER_ID, $OPPONENT_ID)") 


done