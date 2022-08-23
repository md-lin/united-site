CREATE TABLE User
(
    Username VARCHAR(30) PRIMARY KEY,
    Passcode VARCHAR(30) NOT NULL
);

CREATE TABLE Coach
(
    Username VARCHAR(30) PRIMARY KEY,
    Passcode VARCHAR(30) NOT NULL
);

CREATE TABLE Record
(
    Username VARCHAR(30),
    Kg INTEGER,
    Reps INTEGER,
    ExerciseName VARCHAR(20),
    ExerciseVariation VARCHAR(30),
    PRIMARY KEY (Username, Reps, ExerciseName, ExerciseVariation)
    FOREIGN KEY Username REFERENCES User ON DELETE CASCADE
    FOREIGN KEY ExerciseName REFERENCES Exercise ON DELETE CASCADE
    FOREIGN KEY ExerciseVariation REFERENCES Exercise ON DELETE CASCADE
);

CREATE TABLE Exercise
(
    ExerciseName VARCHAR(20),
    ExerciseVariation VARCHAR(30),
    PRIMARY KEY (ExerciseName, ExerciseVariation)
);
