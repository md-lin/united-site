CREATE TABLE UnitedUser
(
    Username VARCHAR(30) PRIMARY KEY,
    Passcode VARCHAR(30) NOT NULL
);

CREATE TABLE Exercise
(
    ExerciseName VARCHAR(20),
    ExerciseVariation VARCHAR(30),
    PRIMARY KEY (ExerciseName, ExerciseVariation)
);

CREATE TABLE Record
(
    Username VARCHAR(30),
    Kg FLOAT,
    Reps INTEGER,
    RecordDate Date,
    RecordBodyweight FLOAT,
    ExerciseName VARCHAR(20),
    ExerciseVariation VARCHAR(30),
    PRIMARY KEY (Username, Reps, ExerciseName, ExerciseVariation),
    FOREIGN KEY (Username) REFERENCES UnitedUser ON DELETE CASCADE,
    FOREIGN KEY (ExerciseName, ExerciseVariation) REFERENCES Exercise ON DELETE CASCADE
);
