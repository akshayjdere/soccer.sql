#Exploring Database soccer:-
SHOW DATABASES; 

#Exploring tables:-
USE soccer;
SHOW tables; 

#Showing the column details using DESCRIBE command:-
DESC clubs; 

#Using WHERE command:-
SELECT * FROM clubs
WHERE last_season = 2022  ;

#Column details of another column 'club_games':- 
DESC club_games;

#Using LIMIT command
SELECT * FROM club_games
LIMIT 15; 

#Using JOIN commands(INNER JOIN, LEFT JOIN, RIGHT JOIN):-
SELECT clubs.name, club_games.game_id, clubs.squad_size
FROM clubs
INNER JOIN club_games ON clubs.club_id=club_games.club_id; 
 
 
 
SELECT clubs.name, clubs.average_age,club_games.game_id,club_games.opponent_goals
FROM clubs
LEFT JOIN club_games
ON clubs.club_id=club_games.club_id;



SELECT clubs.name, club_games.game_id, club_games.own_goals
FROM clubs
RIGHT JOIN club_games
ON clubs.club_id=club_games.club_id;

# Using GROUP BY and ORDER BY:-
SELECT COUNT(domestic_competition_id), clubs.stadium_name
FROM clubs
GROUP BY stadium_name
ORDER BY count(clubs.domestic_competition_id) DESC;
   
 #Using some aggregate functions(SUM(), MAX(), MIN(), AVG():-
SELECT SUM(national_team_players)
FROM clubs
WHERE last_season=2022;  
     
SELECT MAX(opponent_goals) AS our_win
FROM club_games;     
     
 SELECT AVG(average_age) as av_ag
FROM clubs;    
     
     
     
     
   
   
   
   
   
   

