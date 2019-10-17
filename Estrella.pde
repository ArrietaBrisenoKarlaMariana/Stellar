class Estrella implements Movimiento {
  float x;
  float y;
  float r;
  float angulo;
  float t;
  float x_;
  float y_;
  
  Estrella() {
   this.angulo = random(0, 360);
   this.r = 2;
   this.t = 30;
   this.x = this.r * cos(this.angulo);
   this.y = this.r * sin(this.angulo);
   this.x_ = this.t * cos(this.angulo);
   this.y_ = this.t * sin(this.angulo);
  }
  
  void update() {
    this.r += 5;
    this.x = this.r * cos(this.angulo);
    this.y = this.r * sin(this.angulo);
    this.x_ = this.t * cos(this.angulo);
    this.y_ = this.t * cos(this.angulo);
  }
  
  void dibujar() {
    pushMatrix();
    translate(width/2, height/2);
    noStroke();
    fill(255);
    ellipse(x, y, 2, 2);
    stroke(255,40);
    strokeWeight(2);
    line(this.x,this.y,this.x_-30,this.y-30);
    popMatrix();
  }
}
