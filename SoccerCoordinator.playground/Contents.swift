var dragons: [String] = []
var sharks: [String] = []
var raptors: [String] = []

var players: [String: Bool] = ["Joe Smith": true, "Jill Tanner": true, "Bill Bon": true, "Eva Gordon": false, "Matt Gill": false, "Kimmy Stein": false, "Sammy Adams": false, "Karl Saygan": true, "Suzane Greenberg": true, "Sal Dali": false, "Joe Kavalier": false, "Ben Finkelstein": false, "Diego Soto": true, "Chloe Alaska": false, "Arnold Willis": false, "Phillip Helm": true, "Les Clay": true, "Herschel Krustofski": true]

var experiencedPlayers: [String] = []

for (player, experience) in players {
   
    if experience == true {
    experiencedPlayers.append(player)
    }
}

var inExperiencedPlayers: [String] = []

for (player, experience) in players {
    
    if experience == false {
        inExperiencedPlayers.append(player)
    }
}

let numberOfExperiencedPlayers = experiencedPlayers.count
let experiencedPlayersPerTeam = numberOfExperiencedPlayers/3
let numberOfInexperiencedPlayers = players.count - numberOfExperiencedPlayers


if numberOfExperiencedPlayers % 3 != 0 {
    print("The number of experienced players cannot be divided into all three teams.")
}
    
else if players.count % 3 != 0 {"All the players cannot be divided into teams equally. However, the amount of experienced players can be divided into teams equally."}
    
    
else {

    for i in 0...experiencedPlayersPerTeam-1 {
    dragons.append(experiencedPlayers[i])
}

for i in experiencedPlayersPerTeam...(2*experiencedPlayersPerTeam)-1 {
    sharks.append(experiencedPlayers[i])
}

for i in 2*experiencedPlayersPerTeam...(3*experiencedPlayersPerTeam)-1 {
    raptors.append(experiencedPlayers[i])
}

}

let availableSpaceLeftPerTeam = (players.count / 3 ) - experiencedPlayersPerTeam

 
for i in 0...availableSpaceLeftPerTeam-1 {
    dragons.append(inExperiencedPlayers[i])
}

for i in availableSpaceLeftPerTeam...(2*availableSpaceLeftPerTeam)-1 {
    sharks.append(inExperiencedPlayers[i])
}

for i in 2*availableSpaceLeftPerTeam...(3*availableSpaceLeftPerTeam)-1 {
    raptors.append(inExperiencedPlayers[i])
}

var parents: [String: String] = ["Joe Smith": "Jim and Jan Smith", "Jill Tanner": "Clara Tanner", "Bill Bon": "Sara and Jenny Bon", "Eva Gordon": "Wendy and Mike Gordon", "Matt Gill": "Charles and Sylvia Gill", "Kimmy Stein": "Bill and Hillary Stein", "Sammy Adams": "Jeff Adams", "Karl Saygan": "Heather Bledsoe", "Suzane Greenberg": "Henrietta Dumas", "Sal Dali": "Gala Dali", "Joe Kavalier": "Sam and Elaine Kavalier", "Ben Finkelstein": "Aaron and Jill Finkelstein", "Diego Soto": "Robin and Sarika Soto", "Chloe Alaska": "David and Jamie Alaska", "Arnold Willis": "Claire Willis", "Phillip Helm": "Thomas Helm and Eva Jones", "Les Clay": "Wynonna Brown", "Herschel Krustofski": "Hyman and Rachel Krustofski"]

for (child, parents) in parents {
    
    if dragons.contains(child) {
        print("Dear \(parents), your child, \(child), has been placed in Dragons. The practice will be on March 17 at 1pm")
        
    } else if sharks.contains(child){
      print("Dear \(parents), your child, \(child), has been placed in Sharks. The practice will be on March 17 at 3pm")
    } else {
        print("Dear \(parents), your child, \(child), has been placed in Raptors. The practice will be on March 18 at 1pm")
    }
}





