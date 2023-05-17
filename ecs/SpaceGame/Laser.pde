class Laser {
  int x, y, w, h, speed;
  color c1;
  PImage laser;

  Laser(int x, int y) {
    this.x = x;
    this.y = y;
    w = 8;
    h = 20;
    speed = 5;
    c1 = color(200, 22, 22);
    laser = loadImage("laser.png");
  }

  void display() {
    rectMode(CENTER);
    noStroke();
    fill(c1);
    rect(x,y,w,h);
    //imageMode(CENTER);
    //laser.resize(w, h);
    //image(laser, x, y);
  }

  void move() {
    y -= speed;
  }

  boolean reachedTop() {
    if (y<-10) {
      return true;
    } else {
      return false;
    }
  }

  boolean intersect(Rock rock) {
    float d = dist(x, y, rock.x, rock.y);
    if (d<rock.diam/2) {
      return true;
    } else {
      return false;
    }
  }
}
