class Position ():
    xCoordinates = 0
    yCoordinates = 0

def __init__ (self, xCoordinates, yCoordinates):
    if xCoordinates or yCoordinates == '':
        xCoordinates = 0
        yCoordinates = 0
    self.xCoordinates = xCoordinates
    self.yCoordinates = yCoordinates