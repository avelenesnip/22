ArrayList <la> laList;
PImage sprite;
la l;

void setup () {/////////////////////////////////
  size (800, 800, FX2D);
  int i =- 0;
  sprite = loadImage("sprite.png");
  imageMode (CENTER);

  laList = new ArrayList <la>();
  l = new la ();

  while ( i < laList.size()) {

    laList.add(new la());
    i++;
  }
}///////////////////////////////////////////////





void draw () {//////////////////////////////////
  background (0);

  int i = 0;

  while (i < laList.size()) {

    la l = laList.get(i);

    if (l.alive == true) {

      l.show();
      l.act();
      i++;
    } else {
      laList.remove(i);
    }
  
}




}///////////////////////////////////////////////


void mousePressed () {

  int i = 0;

  while (i < 100) {
    laList.add (new la());

    i++;
  }
}
