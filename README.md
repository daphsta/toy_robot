# Toy Robot
## Introduction
The application is a simulation of a toy robot moving on a square tabletop, of dimensions 5 units x 5 units.
There are no other obstructions on the table surface. The robot is free to roam around the surface of the table.
Any movement that would result in the robot falling from the table is prevented, however further valid movement
commands are still allowed.

## Requirements
The application reads a file using a name passed in the command line, the following commands are valid:

```
     PLACE X,Y,F
     MOVE
     LEFT
     RIGHT
     REPORT
```

* PLACE will put the toy robot on the table in position X,Y and facing NORTH, SOUTH, EAST or WEST.
* The origin (0,0) is the SOUTHWEST most corner.
* All commands are ignored until a valid PLACE is made.
* MOVE will move the toy robot one unit forward in the direction it is currently
facing.
* LEFT and RIGHT rotates the robot 90 degrees in the specified direction without
changing the position of the robot.
* REPORT announces the X,Y and F of the robot.

The file is assumed to have ASCII encoding. It is assumed that the PLACE command has only one space, that is PLACE 1, 2,
NORTH is an invalid command. All commands must be in upcase, all lower and mixed case commands will be ignored

## Usage
`./toyrobot commands.txt`

## Testing
`bundle exec rspec`
