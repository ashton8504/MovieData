CREATE TABLE Genres (
  GenreID serial PRIMARY KEY,
  Name varchar(50) NOT NULL,
  Description varchar(1000)
);

CREATE TABLE Directors (
  DirectorID serial PRIMARY KEY,
  Name varchar(50) NOT NULL,
  Bio varchar(1000),
  Birthyear date,
  Deathyear date
);

CREATE TABLE Movies (
  MovieId serial PRIMARY KEY,
  Title varchar(50) NOT NULL,
  Description varchar(1000),
  DirectorID integer NOT NULL,
  GenreID integer NOT NULL,
  ImageURL varchar(300),
  Featured boolean,
  CONSTRAINT GenreKey FOREIGN KEY (GenreID)
    REFERENCES Genres (GenreID),
  CONSTRAINT DirectorKey FOREIGN KEY (DirectorID)
    REFERENCES Directors (DirectorID)
);

CREATE TABLE Users (
  UserID serial PRIMARY KEY,
  Username varchar(50) NOT NULL,
  Password varchar(50) NOT NULL,
  Email varchar(50) NOT NULL,
  Birth_date date
);

CREATE TABLE User_Movies (
  UserMovieID serial PRIMARY KEY,
  UserID integer,
  MovieID integer,
  CONSTRAINT UserKey FOREIGN KEY (UserID)
    REFERENCES Users(UserID),
  CONSTRAINT MovieKey FOREIGN KEY (MovieID)
    REFERENCES Movies(MovieID)
);

INSERT INTO Genres(Name, Description) VALUES('Thriller', 'Thriller film, also known as suspense film or suspense thriller, is a broad film genre that involves excitement and suspense in the audience.');
INSERT INTO Genres(Name, Description) VALUES('Action', 'Action film is a film genre in which the protagonist is thrust into a series of events that typically involve violence and physical feats.');
INSERT INTO Genres(Name, Description) VALUES('Drama', 'In film and television, drama is a category of narrative fiction (or semi-fiction) intended to be more serious than humorous in tone.');
INSERT INTO Genres(Name, Description) VALUES('Fantasy', 'Fantasy films are films that belong to the fantasy genre with fantastic themes, usually magic, supernatural events, mythology, folklore, or exotic fantasy worlds.');

Directors:

INSERT INTO Directors(Name, Bio, Birthyear, Deathyear) VALUES('Stuart Rosenberg', 'Stuart Rosenberg was born on August 11, 1927 in Brooklyn, New York City, New York, USA. He was a director and producer, known for Cool Hand Luke (1967), Question 7 (1961) and The Defenders (1961). He was married to Margot Pohoryles. He died on March 15, 2007 in Beverly Hills, Los Angeles, California, USA.', '1927-01-01', '2007-01-01');
INSERT INTO Directors(Name, Bio, Birthyear) VALUES ('Matt Reeves', 'Matthew George "Matt" Reeves was born April 27, 1966 in Rockville Center, New York, USA and is a writer, director and producer. Reeves began making movies at age eight, directing friends and using a wind-up camera.', '1966-01-01');
INSERT INTO Directors(Name, Bio, Birthyear) VALUES ('Rob Reiner', 'Robert Reiner was born in New York City, to Estelle Reiner (née Lebost) and Emmy-winning actor, comedian, writer, and producer Carl Reiner. As a child, his father was his role model, as Carl Reiner created and starred in The Dick Van Dyke Show. Estelle was also an inspiration for him to become a director; her experience as a singer helped him understand how music was used in a scene. Rob often felt pressured about measuring up to his father''s successful streak, with twelve Emmys and other prestigious awards.', '1947-01-01');
INSERT INTO Directors(Name, Bio, Birthyear) VALUES ('Christopher Nolan', 'Best known for his cerebral, often nonlinear, storytelling, acclaimed writer-director Christopher Nolan was born on July 30, 1970, in London, England. Over the course of 15 years of filmmaking, Nolan has gone from low-budget independent films to working on some of the biggest blockbusters ever made', '1970-01-01');
INSERT INTO Directors(Name, Bio, Birthyear, Deathyear) VALUES('Richard Marquand', 'Richard Marquand was born on September 22, 1937 in Llanishen, Cardiff, Glamorgan, Wales. He was a director and producer, known for Star Wars: Episode VI - Return of the Jedi (1983), Jagged Edge (1985) and Nowhere to Run (1993). He was married to Carol Bell and Josephine Marquand. He died on September 4, 1987 in Tunbridge Wells, Kent, England.', '1937-01-01', '1987-01-01');
INSERT INTO Directors(Name, Bio, Birthyear, Deathyear) VALUES('Stanley Kubrick', 'Stanley Kubrick was born in Manhattan, New York City, to Sadie Gertrude (Perveler) and Jacob Leonard Kubrick, a physician. His family were Jewish immigrants (from Austria, Romania, and Russia). Stanley was considered intelligent, despite poor grades at school.', '1928-01-01', '1999-01-01');

Movies:

INSERT INTO Movies(Title, Description, GenreID, DirectorID,ImageUrl,Featured) VALUES('Cool Hand Luke','A laid back Southern man is sentenced to two years in a rural prison, but refuses to conform.',3,6,'coolhandluke.png',True);
INSERT INTO Movies(Title, Description, GenreID, DirectorID,ImageUrl,Featured) VALUES('The Batman','When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city''s hidden corruption and question his family''s involvement.',2,7,'thebatman.png',True);
INSERT INTO Movies(Title, Description, GenreID, DirectorID,ImageUrl,Featured) VALUES('Stand by Me','After the death of one of his friends, a writer recounts a childhood journey with his friends to find the body of a missing boy.',3,8,'standbyme.png',True);
INSERT INTO Movies(Title, Description, GenreID, DirectorID,ImageUrl,Featured) VALUES('Star Wars: Episode VI - Return of the Jedi','"After a daring mission to rescue Han Solo from Jabba the Hutt, the Rebels dispatch to Endor to destroy the second Death Star. Meanwhile, Luke struggles to help Darth Vader back from the dark side without falling into the Emperor''s trap.',2,10,'returnofjedi.png',True);
INSERT INTO Movies(Title, Description, GenreID, DirectorID,ImageUrl,Featured) VALUES('Star Wars','Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire''s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.',2,10,'starwars.png',True);
INSERT INTO Movies(Title, Description, GenreID, DirectorID,ImageUrl,Featured) VALUES('Star Wars: Episode V - The Empire Strikes Back','After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued across the galaxy by Darth Vader and bounty hunter Boba Fett.',2,10,'empire.png',True);
INSERT INTO Movies(Title, Description, GenreID, DirectorID,ImageUrl,Featured) VALUES('Batman Begins','After training with his mentor, Batman begins his fight to free crime-ridden Gotham City from corruption.',1,1,'batmanbegins.png',True);
INSERT INTO Movies(Title, Description, GenreID, DirectorID,ImageUrl,Featured) VALUES('The Dark Knight','When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',2,9,'darkknightreturns.png',True);
INSERT INTO Movies(Title, Description, GenreID, DirectorID,ImageUrl,Featured) VALUES('The Dark Rises','Eight years after the Joker''s reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City from the brutal guerrilla terrorist Bane.',2,9,'darkknightrises.png',True);
INSERT INTO Movies(Title, Description, GenreID, DirectorID,ImageUrl,Featured) VALUES('Dunkirk','Allied soldiers from Belgium, the British Commonwealth and Empire, and France are surrounded by the German Army and evacuated during a fierce battle in World War II.',2,9,'dunkirk.png',True);
