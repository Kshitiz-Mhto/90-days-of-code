class Human:
    def __init__(self):
        self.name = 'durga'
        self.head = Head()      
    def display(self):
        print("name", self.name)
        self.head.talk()
        self.head.brain.think()

class Head:
    def __init__(self):
        self.brain = self.Brain()
    def talk(self):
        print("talking......")
    class Brain:
        def think(self):
            print("thinking ....")
    
human1 = Human()
human1.display()