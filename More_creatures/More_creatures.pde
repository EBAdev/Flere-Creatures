//for at gøre programmet lidt lækkert så importere vi et General User Interface libary eller GUI som man forkorter det til 
//dette libary gør det meget nemmere at lave knapper, sliders og texfelter.
import controlP5.*;
ControlP5 cp5;

//opgaven var alt lave flere Creatures derfor laver vi nu en Arraylist over alle vores objekter så vi bare kan tilføje endnu en cirkel i progrmmet og så alle cirklerne er uafhængige
ArrayList<Creature> Creatures = new ArrayList<Creature>();

void setup() {
  size(800, 600);
  cp5 = new ControlP5(this); // start vores library op og lav en knap der hedder Add_Creature i øverste venstre hjørne

  cp5.addButton("Add_Creature")
    .setPosition(10, 10)
    .setSize(100, 50)
    ;
}

void draw() {
  background(0);

  for (int i = 0; i < Creatures.size(); i++) { //et for loop der itterer igennem vores liste over alle vores cirkler og opdatere alle egenskaber for dem
    Creature c = Creatures.get(i);
    c.show();//opdater show, move og edges egenskaber for alle cirklerne
    c.move();
    c.edges();
  }
}

//void Add_Creature: i denne funktion skriver vi alt det som vores knap skal gøre 
void Add_Creature() {
  Creatures.add(new Creature()); //hver gang der trykkes på Add_creature skal der nu lægges en ny cirkel ind i vores liste over cirkler
}
