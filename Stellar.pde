Pantallas flujo = new Pantallas();
ArrayList <Asteroide> asteroides;
ArrayList<Estrella> estrellas;
ArrayList<Meteorito> meteoritos;
ArrayList <Nave> naves;
PImage stellar, instrucciones;
PFont f,g,h;
int frameCounter;

void setup() {
  size(800,600); //<>//

  asteroides = new ArrayList();
  asteroides.add(new Asteroide());
  estrellas = new ArrayList();
  estrellas.add(new Estrella());
  meteoritos = new ArrayList();
  meteoritos.add(new Meteorito());
  naves = new ArrayList();
  naves.add(new Nave());
  
  stellar = loadImage("stellar.jpg");
  stellar.resize(800,600);
  instrucciones = loadImage("instrucciones.jpg");
  instrucciones.resize(800,600);
  f = loadFont("Amalina-48.vlw");
  g = loadFont("CenturyGothic-48.vlw");
  h = loadFont("ColonnaMT-48.vlw");
  
  }

void draw() {
  flujo.statusPantalla(); //<>//
  if(mousePressed == true) {
    saveFrame();
  } 
    }

 void keyPressed() {
   //Agregar objetos
  if(key == 'a') {
   asteroides.add(new Asteroide());
  }
  if(key == 'e') {
   estrellas.add(new Estrella());
  }
  if(key == 'm') {
   meteoritos.add(new Meteorito());
  }
  if(key == 'n') {
   naves.add(new Nave());
  }
  
  //Eliminar objetos
  if(key == 'z') {
   asteroides.remove(asteroides.size()-1); 
  }
  if(asteroides.size() == 0) {
    asteroides.add(new Asteroide());
  }
    if(key == 'd') {
   estrellas.remove(estrellas.size()-1); 
  }
  if(estrellas.size() == 0) {
    estrellas.add(new Estrella());
  }
    if(key == 'l') {
   meteoritos.remove(meteoritos.size()-1); 
  }
  if(meteoritos.size() == 0) {
    meteoritos.add(new Meteorito());
  }
    if(key == 'o') {
   naves.remove(naves.size()-1); 
  }
  if(naves.size() == 0) {
    naves.add(new Nave());
  }
   }

    
