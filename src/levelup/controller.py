import logging
from dataclasses import dataclass
from enum import Enum

DEFAULT_CHARACTER_NAME = "Character"

#TODO: ADD THINGS YOU NEED FOR STATUS
class GameStatus:
    character_name: str = DEFAULT_CHARACTER_NAME
    move_count: int = 0
    running: bool = False

class Direction(Enum):
    NORTH = "n"
    SOUTH = "s"
    EAST = "e"
    WEST = "w"

class CharacterNotFoundException(Exception):
    pass

class InvalidMoveException(Exception):
    pass

class GameController:
    status: GameStatus

    def __init__(self):
        self.status = GameStatus()

    def start_game(self):
        pass

    def move(self, direction: Direction) -> None:
        pass
    def create_character(self, character_name: str) -> None:
            if character_name is not None and character_name != "":
                self.status.character_name = character_name
            else:
                self.status.character_name = DEFAULT_CHARACTER_NAME