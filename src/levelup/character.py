from levelup.position import Position
from levelup.direction import Direction
from levelup.map import Map

class Character:
    name = "Erin"
    current_position :Position = Position(-100,-100)
    map :Map = Map()

    def __init__(self, character):
        self.name = character

    def move(self, direction :Direction) -> None:
        self.current_position = self.map.calculate_new_position(
            self.current_position, direction)
    
    def enter_map(self, map :Map):
        self.map = map
        self.current_position = self.map.starting_position