
-- PROGRESSION 1:

--1. Insert into city
INSERT INTO CITY (ID,NAME) VALUES (1,'PDTR');
INSERT INTO CITY (ID,NAME) VALUES (2,'MYDK');
INSERT INTO CITY (ID,NAME) VALUES (3,'KDP');

--2. Insert into referee
INSERT INTO REFEREE (ID,NAME) VALUES (1,'ABC');
INSERT INTO REFEREE (ID,NAME) VALUES (2,'DEF');
INSERT INTO REFEREE (ID,NAME) VALUES (3,'GHI');

--3. Insert into innings
INSERT INTO INNINGS (ID,INNINGS_NUMBER) VALUES (1,10);
INSERT INTO INNINGS (ID,INNINGS_NUMBER) VALUES (2,11);
INSERT INTO INNINGS (ID,INNINGS_NUMBER) VALUES (3,12);

--4. Insert into extra_type
INSERT INTO extra_type (ID,NAME) VALUES (1,'ABC');
INSERT INTO extra_type (ID,NAME) VALUES (2,'DEF');
INSERT INTO extra_type (ID,NAME) VALUES (3,'GHI');

--5. Insert into skill
INSERT INTO skill (ID,NAME) VALUES (1,'ABC');
INSERT INTO skill (ID,NAME) VALUES (2,'DEF');
INSERT INTO skill (ID,NAME) VALUES (3,'GHI');

--6. Insert into team
INSERT INTO TEAM (ID,NAME,COACH,home_city,captain) VALUES (1,'ABC','DEF',101,201);
INSERT INTO TEAM (ID,NAME,COACH,home_city,captain) VALUES (2,'GHI','JKL',102,202);
INSERT INTO TEAM (ID,NAME,COACH,home_city,captain) VALUES (3,'MNO','PQR',103,203);

--7. Insert into player
INSERT INTO player (ID,NAME,country,skill_id,team_id) VALUES (1,'ABC','DEF',101,201);
INSERT INTO player (ID,NAME,country,skill_id,team_id) VALUES (2,'GHI','JKL',102,202);
INSERT INTO player (ID,NAME,country,skill_id,team_id) VALUES (3,'MNO','PQR',103,203);

--8. Insert into venue
INSERT INTO VENUE (id,stadium_name,city_id) VALUES (1,'ABC',101);
INSERT INTO VENUE (id,stadium_name,city_id) VALUES (2,'DEF',102);
INSERT INTO VENUE (id,stadium_name,city_id) VALUES (3,'GHI',103);

--9. Insert into event
INSERT INTO EVENT (ID,innings_id,event_no,raider_id,raid_points,defending_points,clock_in_seconds,team_one_score,team_two_score) VALUES (1,101,201,301,401,501,601,701,801);
INSERT INTO EVENT (ID,innings_id,event_no,raider_id,raid_points,defending_points,clock_in_seconds,team_one_score,team_two_score) VALUES (2,102,202,302,402,502,602,702,802);
INSERT INTO EVENT (ID,innings_id,event_no,raider_id,raid_points,defending_points,clock_in_seconds,team_one_score,team_two_score) VALUES (3,103,203,303,403,503,603,703,803);

--10. Insert into extra_event
INSERT INTO extra_event (ID,event_id,extra_type_id,points,scoring_teaming_id) VALUES (1,101,201,301,401);
INSERT INTO extra_event (ID,event_id,extra_type_id,points,scoring_teaming_id) VALUES (2,102,202,302,402);
INSERT INTO extra_event (ID,event_id,extra_type_id,points,scoring_teaming_id) VALUES (3,103,203,303,403);

--11. Insert into outcome
INSERT INTO OUTCOME (ID,status,winner_team_id,score,player_of_match) VALUES (1,'ABC',101,201,301);
INSERT INTO OUTCOME (ID,status,winner_team_id,score,player_of_match) VALUES (2,'DEF',102,202,302);
INSERT INTO OUTCOME (ID,status,winner_team_id,score,player_of_match) VALUES (3,'GHI',103,203,303);

--12. Insert into game
INSERT INTO GAME (id,game_date,team_id_1,team_id_2,venue_id,outcome_id,referee_id_1,referee_id_2,first_innings_id,second_innings_id) VALUES (1,DATE '2020-06-10',101,201,301,401,501,601,701,801);
INSERT INTO GAME (id,game_date,team_id_1,team_id_2,venue_id,outcome_id,referee_id_1,referee_id_2,first_innings_id,second_innings_id) VALUES (2,DATE '2020-06-11',102,202,302,402,502,602,702,802);
INSERT INTO GAME (id,game_date,team_id_1,team_id_2,venue_id,outcome_id,referee_id_1,referee_id_2,first_innings_id,second_innings_id) VALUES (3,DATE '2020-06-12',103,203,303,403,503,603,703,803);

--13. Update player table
UPDATE PLAYER
SET name = 'XYZ' WHERE skill_id>100;
--14. Update player table
UPDATE PLAYER
SET country = 'PQR' WHERE team_id>201;

--15. Update player table
UPDATE PLAYER
SET ID = 10 WHERE country = 'PQR';

--16. Update player table
UPDATE PLAYER
SET skill_id = 100 WHERE country = 'PQR';

--17. Delete from extra_type
DELETE FROM EXTRA_TYPE WHERE ID =2;
--18. Delete from referee
DELETE FROM REFEREE WHERE ID =1;

--19. Delete from player
DELETE FROM PLAYER WHERE ID =10;

--20. Delete from outcome
DELETE FROM OUTCOME WHERE score <202;