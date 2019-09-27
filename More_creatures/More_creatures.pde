import controlP5.*;
ControlP5 cp5;

ArrayList<Creature> Creatures = new ArrayList<Creature>();

void setup() {
  size(800, 600);
  cp5 = new ControlP5(this);

  cp5.addButton("Add_Creature")
    .setValue(10)
    .setPosition(10, 10)
    .setSize(100, 50)
    ;
}

void draw() {
  background(0);

  for (int i = 0; i < Creatures.size(); i++) {
    Creature c = Creatures.get(i);
    c.show();
    c.move();
    c.edges();
  }
}

public void Add_Creature() {
  Creatures.add(new Creature());
}
