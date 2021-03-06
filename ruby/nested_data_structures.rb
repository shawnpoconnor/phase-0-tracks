gameboards = {
  "tic-tac-toe" => [[0,0,0],
                    [0,0,0],
                    [0,0,0]],


  "chess" => [["R","K","B","Q","K","B","K","R"],
              ["P","P","P","P","P","P","P","P"],
              [" "," "," "," "," "," "," "," "],
              [" "," "," "," "," "," "," "," "],
              [" "," "," "," "," "," "," "," "],
              [" "," "," "," "," "," "," "," "],
              ["P","P","P","P","P","P","P","P"],
              ["R","k","B","Q","K","B","k","R"]],


  "checkers" => [["B"," ","B"," ","B"," ","B"," "],
                 [" ","B"," ","B"," ","B"," ","B"],
                 ["B"," ","B"," ","B"," ","B"," "],
                 [" "," "," "," "," "," "," "," "],
                 [" "," "," "," "," "," "," "," "],
                 [" ","R"," ","R"," ","R"," ","R"],
                 ["R"," ","R"," ","R"," ","R"," "],
                 [" ","R"," ","R"," ","R"," ","R"]],


  "Raumschach" => [[["R","k","K","k","R"],
                    ["P","P","P","P","P"],
                    [" "," "," "," "," "],
                    [" "," "," "," "," "],
                    [" "," "," "," "," "]],

                   [["U","B","Q","U","B"],
                    ["P","P","P","P","P"],
                    [" "," "," "," "," "],
                    [" "," "," "," "," "],
                    [" "," "," "," "," "]],

                   [[" "," "," "," "," "],
                    [" "," "," "," "," "],
                    [" "," "," "," "," "],
                    [" "," "," "," "," "],
                    [" "," "," "," "," "]],

                   [[" "," "," "," "," "],
                    [" "," "," "," "," "],
                    [" "," "," "," "," "],
                    ["P","P","P","P","P"],
                    ["U","B","Q","U","B"]],

                   [[" "," "," "," "," "],
                    [" "," "," "," "," "],
                    [" "," "," "," "," "],
                    ["P","P","P","P","P"],
                    ["R","k","K","k","R"]]],

  "clue" => {
    "Dining Room" => {"person" => "nil", "weapon" => "nil"},
    "Kitchen" => {"person" => "nil", "weapon" => "nil"},
    "Ballroom" => {"person" => "nil", "weapon" => "nil"},
    "Study" => {"person" => "nil", "weapon" => "nil"},
    "Hall" => {"person" => "nil", "weapon" => "nil"},
    "Billards Room" => {"person" => "nil", "weapon" => "nil"},
    "Conservatory" => {"person" => "nil", "weapon" => "nil"}
  }
}

(gameboards["tic-tac-toe"][0][0] = "X")
(gameboards["clue"]["Ballroom"]["person"] = "Mrs. Peacock")
(gameboards["clue"]["Ballroom"]["weapon"] = "Revolver")
(gameboards["Raumschach"][1].last)
(gameboards["Raumschach"].last.last.last)