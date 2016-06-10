var myRover = {
  position: [0,0], 
  direction: 'N'
};

function goForward(rover) {
  switch(rover.direction) {
    case 'N':
      rover.position[0]++
      break;
    case 'E':
      rover.position[1]++
      break;
    case 'S':
      rover.position[0]--
      break;
    case 'W':
      rover.position[1]--
      break;
  };

 // console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
}

//goForward(myRover);

  function goBackward(rover) {
    switch(rover.direction) {
    case 'N':
      rover.position[0]--
      break;
    case 'E':
      rover.position[1]--
      break;
    case 'S':
      rover.position[0]++
      break;
    case 'W':
      rover.position[1]++
      break;
    };

     // console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
    
  }

//goBackward(myRover);

  function turnLeft(rover) {
    switch(rover.direction) {
    case 'N':
      rover.direction = 'W'
      break;
    case 'E':
      rover.direction = 'N'
      break;
    case 'S':
      rover.direction = 'E'
      break;
    case 'W':
      rover.direction = 'S'
      break;
    };

    //  console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
    
  }

//turnLeft(myRover);

  function turnRight(rover) {
    switch(rover.direction) {
    case 'N':
      rover.direction = 'E'
      break;
    case 'E':
      rover.direction = 'S'
      break;
    case 'S':
      rover.direction = 'W'
      break;
    case 'W':
      rover.direction = 'N'
      break;
    };

     // console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
    
  }

  //turnRight(myRover);


function move(command) {
  for(var i=0; i<command.length; i++){
  if(myRover.position[0]<5 && myRover.position[1]<5 && myRover.position[0] > -5 && myRover.position[1] >-5){
  switch(command[i]) {
    case 'f':
    goForward(myRover)
    break;
    case 'b':
    goBackward(myRover)
    break;
    case 'r':
    turnRight(myRover)
    break;
    case 'l':
    turnLeft(myRover)
    break;
      }; 
    }else {
    console.log("Rover boundary reached; New Rover Position: [" + myRover.position[0] + ", " + myRover.position[1] + "]")
    return ;
  }
  }
  console.log("New Rover Position: [" + myRover.position[0] + ", " + myRover.position[1] + "]")
}

//var command = 'fffrfflfffbb';
//var command = 'fffffffffffffffffff';
var command = 'ff';
move(command);

// BONUS:


