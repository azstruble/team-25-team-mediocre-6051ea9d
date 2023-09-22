*** Settings ***
Documentation   I want to move my character. If they attempt to move past a boundary, the move results in no change in position.
Test Template   Move character
Library         MoveLibrary.py

*** Test Cases ***                  StartingX     StartingY     Direction     EndingX     EndingY
Move character 1 north              0             0             NORTH         0           1
Move character 2 east               3             8             EAST          4           8
Move character 1 south              0             1             SOUTH         0           0
Move character 2 west               4             8             WEST          3           8
Move character 1 west               0             0             WEST          0           0
Move character 2 south              3             8             SOUTH         3           7

*** Keywords ***
Move character
    [Arguments]    ${startingX}    ${startingY}    ${direction}    ${endingX}    ${endingY}   
    Initialize character xposition with  ${startingX}
    Initialize character yposition with  ${startingY}
    Move in direction                    ${direction}
    Character xposition should be        ${endingX}
    Character yposition should be        ${endingY}