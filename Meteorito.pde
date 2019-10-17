class Meteorito implements Movimiento {
  float radio;
  float strokeWidth;
  color r,g,b;
  color col;
  int contador;

  
  Meteorito() {
    this.radio = 1;
    this.strokeWidth = 1;
    this.contador = 1;
    this.r = color(255,0,0);
    this.g = color(0,255,0);
    this.b = color(0,0,255);
  }
  
   void update() {
    this.radio = this.radio + 5;
    this.strokeWidth += 0.05;
    if(contador == 1 ) {
      col = r;
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
    strokeWeight(this.strokeWidth);
    stroke(col);
    noFill();
    ellipse(0, 0, radio, radio);
    stroke(col,200);
    noFill();
    ellipse(0, 0, radio-3, radio-3);
    stroke(col,170);
    noFill();
    ellipse(0, 0, radio-6, radio-6);
    stroke(col,140);
    noFill();
    ellipse(0, 0, radio-9, radio-9);
    stroke(col,110);
    noFill();
    ellipse(0, 0, radio-12, radio-12);
    stroke(col,80);
    noFill();
    ellipse(0, 0, radio-15, radio-15);
    stroke(col,50);
    noFill();
    ellipse(0, 0, radio-18, radio-18);
    stroke(col,20);
    noFill();
    ellipse(0, 0, radio-21, radio-21);
    stroke(col,10);
    noFill();
    ellipse(0, 0, radio-24, radio-24);
    popMatrix();
  }
  
}
