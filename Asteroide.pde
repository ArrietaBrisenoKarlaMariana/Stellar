class Asteroide implements Movimiento {
  float x;
  float y;
  float r;
  float angulo;
  color re,g,b;
  color col;
  int contador;
  float t;
  float x_;
  float y_;

  
  Asteroide() {
    this.angulo = random(0, 360);
    this.r = 5;
    this.t = 30;
    this.x = this.r * cos(this.angulo);
    this.y = this.r * sin(this.angulo);
    this.x_ = this.t * cos(this.angulo);
    this.y_ = this.t * sin(this.angulo);
    this.re = color(255,0,0);
    this.g = color(0,255,0);
    this.b = color(0,0,255);
    this.contador = 1;
  }
  
   void update() {
    this.r += 5;
    this.x = this.r * cos(this.angulo);
    this.y = this.r * sin(this.angulo);
    this.x_ = this.t * cos(this.angulo);
    this.y_ = this.t * cos(this.angulo);
    if(contador == 1 ) {
      col = re;
      contador++;
    } else if(contador == 2) {
      col = g;
      contador++; 
    } else if(contador == 3) {
      col = b;
      this.contador = 1;
    }
  }
  
  void dibujar() {
    pushMatrix();
    translate(width/2, height/2);
    noStroke();
    fill(col);
    ellipse(x, y, 4, 4);
    stroke(col,50);
    strokeWeight(4);
    line(this.x,this.y,this.x_-30,this.y-30);
    popMatrix();
    
  }
 
  }
