# list muscles
muscle_list <- c("Chest",
                 "Front delt",
                 "Side delt",
                 "Tricep",

                 "Traps",
                 "Mid back",
                 "Lats",
                 "Lower back",
                 "Bicep",
                 "Rear delt",

                 "Quad",
                 "Hamstring",
                 "Calf",

                 "Core",

                 "Aerobic")

muscle_list <- c("Core",
                 "Arms",
                 "Back",
                 "Chest",
                 "Legs",
                 "Shoulders")

# function which outputs some muscle groups to 1, 0.6, 0.3
classify_each_exercise <- function(exercise,
                                   major = c(),
                                   minor = c(),
                                   subminor = c(),
                                   muscle_list) {
  data <- data.frame("exercise_name" = exercise,
                     Core = 0,
                     Arms = 0,
                     Back = 0,
                     Chest = 0,
                     Legs = 0,
                     Shoulders = 0)

  for (muscle in muscle_list) {
    if (muscle %in% major) {
      data[[muscle]] <- 1
    }
    if (muscle %in% minor) {
      data[[muscle]] <- 0.6
    }
    if (muscle %in% subminor) {
      data[[muscle]] <- 0.3
    }
  }

  return(data)
}

append_classification <- function(data,
                                  exercise,
                                  major = c(),
                                  minor = c(),
                                  subminor = c(),
                                  muscle_list) {
  temp_df <- classify_each_exercise(exercise,
                                    major,
                                    minor,
                                    subminor,
                                    muscle_list)
  data <- rbind(data, temp_df)

  return(data)
}

classify_all_exercises <- function(muscle_list) {
  data <- data.frame()

  # Push
  data <- append_classification(data,
                                "Bench Press (Barbell)",
                                c("Chest",
                                  "Arms"),
                                c("Shoulders"),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Incline Bench Press (Barbell)",
                                c("Shoulders",
                                  "Arms"),
                                c("Chest"),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Decline Bench Press (Barbell)",
                                c("Chest",
                                  "Arms"),
                                c("Shoulders"),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Overhead Press (Barbell)",
                                c("Shoulders"),
                                c("Core",
                                  "Arms"),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Overhead Press (Dumbbell)",
                                c("Shoulders"),
                                c("Core",
                                  "Arms"),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Triceps Dip (Assisted)",
                                c("Arms"),
                                c("Chest"),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Triceps Dip",
                                c("Arms"),
                                c("Chest"),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Triceps Extension",
                                c("Arms"),
                                c(),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Triceps Extension (Cable)",
                                c("Arms"),
                                c(),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Lateral Raise (Dumbbell)",
                                c("Shoulders"),
                                c(),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Lateral Raise (Cable)",
                                c("Shoulders"),
                                c(),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Bench Press (Cable)",
                                c("Chest"),
                                c(),
                                c("Arms",
                                  "Shoulders"),
                                muscle_list)
  data <- append_classification(data,
                                "Chest Fly",
                                c("Chest"),
                                c(),
                                c(),
                                muscle_list)

  # Pull
  data <- append_classification(data,
                                "Chin Up",
                                c("Back",
                                  "Arms"),
                                c(),
                                c("Shoulders",
                                  "Core"),
                                muscle_list)
  data <- append_classification(data,
                                "Pull Up",
                                c("Back"),
                                c("Shoulders",
                                  "Arms"),
                                c("Core"),
                                muscle_list)
  data <- append_classification(data,
                                "Bent Over Row - Underhand (Barbell)",
                                c("Back"),
                                c("Arms"),
                                c("Shoulders"),
                                muscle_list)
  data <- append_classification(data,
                                "Bent Over Row (Barbell)",
                                c("Back"),
                                c("Shoulders"),
                                c("Arms"),
                                muscle_list)
  data <- append_classification(data,
                                "Preacher Curl (Machine)",
                                c("Arms"),
                                c(),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Preacher Curl (Barbell)",
                                c("Arms"),
                                c(),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Face Pull (Cable)",
                                c("Shoulders"),
                                c(),
                                c("Back",
                                  "Core"),
                                muscle_list)
  data <- append_classification(data,
                                "Reverse Fly (Machine)",
                                c(),
                                c("Shoulders",
                                  "Back"),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Bicep Curl (Dumbbell)",
                                c("Arms"),
                                c(),
                                c("Core"),
                                muscle_list)
  data <- append_classification(data,
                                "Lat Pulldown - Wide Grip (Cable)",
                                c("Back"),
                                c(),
                                c("Arms"),
                                muscle_list)
  data <- append_classification(data,
                                "Lat Pulldown (Single Arm)",
                                c("Back"),
                                c(),
                                c("Arms"),
                                muscle_list)
  data <- append_classification(data,
                                "Seated Row (Cable)",
                                c("Back"),
                                c(),
                                c("Arms"),
                                muscle_list)
  data <- append_classification(data,
                                "Seated Wide-Grip Row (Cable)",
                                c("Back"),
                                c(),
                                c("Arms"),
                                muscle_list)
  data <- append_classification(data,
                                "Back extension",
                                c("Back"),
                                c(),
                                c(),
                                muscle_list)

  # Legs
  data <- append_classification(data,
                                "Squat (Barbell)",
                                c("Legs"),
                                c("Core"),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Stiff Leg Deadlift (Barbell)",
                                c("Legs"),
                                c("Core",
                                  "Back"),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Sumo Deadlift (Barbell)",
                                c("Back"),
                                c("Core",
                                  "Legs"),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Seated Calf Raise (Machine)",
                                c("Legs"),
                                c(),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Seated Calf Raise (Plate Loaded)",
                                c("Legs"),
                                c(),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Lying Leg Curl (Machine)",
                                c("Legs"),
                                c(),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Leg Press",
                                c("Legs"),
                                c(),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Leg Extension (Machine)",
                                c("Legs"),
                                c(),
                                c(),
                                muscle_list)
  data <- append_classification(data,
                                "Standing Calf Raise (Smith Machine)",
                                c("Legs"),
                                c(),
                                c(),
                                muscle_list)

  return(data)
}

aggregate_exercises <- function(muscle_list) {
  data <- classify_all_exercises(muscle_list) %>%
    dplyr::mutate(total = Core + Arms + Back + Chest + Legs + Shoulders)

  return(data)
}

exercise_info <- aggregate_exercises(muscle_list)
usethis::use_data(exercise_info)
