DROP TABLE IF EXISTS `Stats`;
DROP TABLE IF EXISTS `Teams`;



CREATE TABLE Teams (
	teamId BINARY(16) NOT NULL,
	teamName VARCHAR(128) NOT NULL,
	teamNews VARCHAR(128) NOT NULL,
	teamRecord VARCHAR(128) NOT NULL,
	teamStats VARCHAR(128) NOT NULL,
	teamHistory VARCHAR(128),
	INDEX(teamId),
	PRIMARY KEY(teamId)
);


CREATE TABLE Stats (
	teamAId BINARY(16) NOT NULL,
	teamBId BINARY(16) NOT NULL,
	INDEX (teamAId, teamBId),
	FOREIGN KEY(teamAId) references Teams(teamId),
	FOREIGN KEY(teamBId) references Teams(teamId)
);