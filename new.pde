class la {

  //variables
  float x, y, s, vx, vy, ax, ay;
  
  boolean alive;
  
  



  la() {

    
    ax = 0;
    ay = .3;
    x = mouseX; 
    y = mouseY; 
    vx = random (-5, 5);
    vy = random (-10, -5);
    s =  vy;
    
    alive = true;
  }



  void show () {

    fill (255);

    image (sprite, x, y, s*5, s*5);
  }

  void act () {

    vx = vx + ax;
    vy = vy + ay;
    
    
    y = y + vy;
    x = x + vx;

    if ( y >= 850) {
      alive = false;
    }
    
    if ( y <= -50) {
      alive = false;

    }
    
   

    if ( x >= 850) {
      alive = false;
    }
    
    if ( x <= -50) {
     alive = false;
    }
  }
}
