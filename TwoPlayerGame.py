import random 
class Player:
    def __init__(self, name, health=100):  # Konstruktor
        self.name = name
        self.health = health



def fight(attacker, opponent):
    AoderH = input(F"{attacker.name} willst du angreifen oder heilen ")
    if (AoderH == "angreifen"):
        schaden = random.randrange(1 ,25 )
        opponent.health -= schaden
        print("Es wurden ",schaden,"abgezogen")
        print(F" {opponent.name} hat noch",opponent.health,"leben")

    if(AoderH =="heilen"):
        heilen = random.randrange(1,25)
        attacker.health+=heilen
        print("Es wurden",heilen,F"geheilt.{attacker.name} hat jetzt",attacker.health," leben")

def startGame():
    Player2=Player(input("Nenne mir deinen Namen Spiler1 "))
    Player1=Player(input("Was ist dein Namen Spiler2 "))

    while(Player1.health>0):
        fight(Player1, Player2)
        if (Player2.health<=0):
            print(Player1.name,"hatGewonnen")
            break

        fight(Player2, Player1)
        if (Player1.health<=0):
            print(Player2.name,"hatGewonnen")
            break


startGame()