*** Settings ***
Documentation     I want to move my character. If they attempt to move past a boundary, the move results in no change in position.
Test Template     Move character
Library           MoveLibrary.py

*** Test Cases ***                  StartingX     StartingY     StartingMoveCount     Direction     EndingX     EndingY     EndingMoveCount
Move character 1 north              0             0             0                     NORTH         0           1           1
Move character 2 east               3             8             0                     EAST          4           8           1
Move character 1 south              0             1             1                     SOUTH         0           0           2
Move character 2 west               4             8             1                     WEST          3           8           2
Move character 1 west               0             0             2                     WEST          0           0           3
Move character 2 south              3             8             22                    SOUTH         3           7           23

*** Keywords ***
Move character
    [Arguments]    ${startingX}    ${startingY}    ${startingMoveCount}    ${direction}    ${endingX}    ${endingY}    ${endingMoveCount}
    Initialize character xposition with  ${startingX}
    Initialize character yposition with  ${startingY}
    Initialize character moveCount with  ${startingMoveCount}
    Move in direction                    ${direction}
    Character xposition should be        ${endingX}
    Character yposition should be        ${endingY}
    Character moveCount should be        ${endingMoveCount}