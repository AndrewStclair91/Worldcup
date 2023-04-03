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

if [[ $YEAR != year ]]
then echo $YEAR $ROUND $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS
TEAMS=$($PSQL "SELECT team_id FROM TEAMS where name= '$WINNER'")

if [[ -z $TEAM ]]
then 
$INSERT_TEAM=$($PSQL "INSERT into TEAMS(name)VALUES ('$WINNER')")
if
[[ $INSERT_TEAM == "INSERT 0 1" ]]
then
echo Inserted into teams, $WINNER
TEAMS=$($PSQL "SELECT team_id FROM TEAMS where name='$WINNER'")
else 
echo Insert failed: $INSERT_TEAM


fi
else echo exists $WINNER : $TEAMS
fi

LTEAM=$($PSQL "SELECT team_id FROM teams WHERE name= '$OPPONENT'")

if [[ -z $LTEAM ]]

then
$INSERT_LTEAM=$($PSQL "INSERT into TEAMS(name)VALUES ('$OPPONENT')") 
if
[[ $INSERT_LTEAM == "INSERT 0 1" ]]
then
echo Inserted into teams, $OPPONENT

LTEAM=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
else echo Insert failed: $INSERT_LTEAM

fi
else echo exists $OPPONENT : $LTEAM
fi

#insert games using teams_id

WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

INSERT_GAMES=$($PSQL "INSERT into games(year, round, winner_id, opponent_id, winner_goals, opponent_goals)VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)") 

if [[ $INSERT_GAMES == "INSERT 0 1" ]]

then

echo Inserted into games $INSERT_GAMES : $YEAR $ROUND $WINNER_ID $OPPONENT_ID $WINNER_GOALS $OPPONENT_GOALS
else echo Not Inserted $INSERT_GAMES : $YEAR $ROUND $WINNER_ID $OPPONENT_ID $WINNER_GOALS $OPPONENT_GOALS
exit
fi
  fi  
  
done