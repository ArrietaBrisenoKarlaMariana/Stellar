class Nave implements Movimiento {
  PImage nave;
  PVector ubicacion;
  PVector velocidad;
  PVector aceleracion;
  float velocidadMaxima;
  int t;
  
  Nave() {
    ubicacion = new PVector (width/2,height/2);
    velocidad = new PVector (0,0);
    aceleracion = new PVector (-0.01,0.01);
    velocidadMaxima = 5;
    this.t = 1;
  }
  
   void update() {
    aceleracion = PVector.random2D();
    aceleracion.mult(0.7);
    velocidad.add(aceleracion);
    velocidad.limit(velocidadMaxima);
    ubicacion.add(velocidad);
    this.t +=2;
  }
  
  void dibujar() {
    nave = loadImage("star.png");
    nave.resize(t,t);
    image(nave,ubicacion.x, ubicacion.y); 
  }
  
}
