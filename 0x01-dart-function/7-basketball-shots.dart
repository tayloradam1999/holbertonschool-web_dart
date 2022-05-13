// Given two maps that represent number of successful shots for each shot type in a basketball
// game between Team A and B, calculate total number of points for each team and return
// the winning team.


int whoWins(Map<String, int> team1, Map<String, int> team2) {
  int team1Points = 0;
  int team2Points = 0;
  // Keys can be 'Free throws', '2 pointers', '3 pointers'
  team1.forEach((key, value) {
    // check key
    if (key == 'Free throws') team1Points += value;
    else if (key == '2 pointers') team1Points += value * 2;
    else if (key == '3 pointers') team1Points += value * 3;
  });
  team2.forEach((key, value) {
    // check key
    if (key == 'Free throws') team2Points += value;
    else if (key == '2 pointers') team2Points += value * 2;
    else if (key == '3 pointers') team2Points += value * 3;
  });
  // check if team1Points is greater than team2Points
  if (team1Points > team2Points) return 1;
  if (team1Points < team2Points) return 2;
  if (team1Points == team2Points) return 0;
  return 0;
}