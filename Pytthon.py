print ("Hallo")

user = input("Wie heisst du")
print(user)
def hello():
    zahl=input("Nenne mir eine Zahl")
hello()
class Person:
    def __init__(self, name, adresse, age=10):  # Konstruktor
        self.name = name
        self.adresse = adresse
        self.age = age
    
    def say_hello(self):            # Methode
        print("Hallo, mein Name ist", self.name)

    def get_adresse(self):            # Methode
        print("Hallo, mein adresse ist", self.adresse)

    def get_age(self):              # Methode
        return self.age


Hans = Person("Fritz","Baarstrasse12")

Hans.get_age()
print(Hans.get_age())
Hans.get_adresse()