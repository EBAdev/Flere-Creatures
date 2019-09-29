//For at gøre det nemmere for os senere så arbejder vi med objectorientet programming det er når man laver 'objekter'
//og giver dem egenskaber det holder koden mere 'clean' og har en masse smarte funktioner
class Creature { // lav et opbjekt og kald der for Creature
//her laver vi en masse variabler og giver dem værdier vi skal brug senere
  float speedX = random(-5, 5), speedY=random(-5, 5); //speedX og speedY er objektetes hastighed da livet er unfair er der altså nogle cirkler der har det hårde end andre med mindre fart under vores program
  float x = random(width);//placer cirklen et tilfældigt sted
  float y = random(height);
  float red = random(0, 255); //fordi at det også skal være pænt at se på så giver vi alle cirklerne forskellige farver
  float green = random(0, 255);
  float blue = random(0, 255);
  int Diameter = 40;//Diameter er i dette program cirklernes diameter 
 
//show egenskaben for vores objekt bliver alt det visuelle man kan se udadtil her skriver vi altså en masse GUI ting 
  void show() {
    fill(red, green, blue); //forskellige farver til vores cirkler
    ellipse(x, y, Diameter, Diameter); //lav en cirkel på et tilfældigt sted med 40 pixels i diameter
    fill(0);
    textAlign(CENTER);
    textSize(((Diameter-40)/10)+12); //en lille funktion til at få teksten inden i vores cirkler til at scalere med cirklens størrelse
    text((Diameter-40)/10,x,y+3);// skriv hvor mange gange cirklen har ramt en kant inden i cirklen
  }

//move engenskaben er en selvfølge da vi gerne vil have at vores cirkler bevæger sig ellers bliver det et ret kedeligt program
  void move() {
    x = x + speedX; //hvert frame skal vi opdatere X og Y værdien for hver af vores cirkler med henholdsvis speedX og speedY
    y = y + speedY;
  }
  
//for at vores cirkler ikke skal forsvinde ud af billedet lige med det samme giver vi dem nu edges egenskaben så de bliver reflekteret tilbage når de rammer en kant
  void edges() {
    if (x > width || x < 0) { //tjek om en cirkel har bevæget sig for langt vandret
      speedX = -speedX; //reflekter den i den anden retning
      Diameter = Diameter + 10; //gør cirklen lidt større
    }
    if (y > height || y < 0) {//tjek om en cirkel har bevæget sig for langt lodret
      speedY = -speedY;
      Diameter = Diameter+ 10;
    }
  }
}
