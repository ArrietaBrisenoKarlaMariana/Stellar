class Pantallas {
  
  int pantalla = 1;
  
  void statusPantalla(){
   switch (pantalla){
    case 1:
    Inicio();
    break;
    
    case 2:
    Instrucciones();
    break;
    
    case 3:
    Stellar();
    break;
  }
  }
  
  void Inicio() {
    image(stellar,0,0);  
    fill(234, 255, 0);
    textFont(f);
    textSize(80);
    textAlign(CENTER, CENTER);
    text("Stellar", width/2, 150);
    textFont(g);
    textSize(25);
    textAlign(CENTER,CENTER);
    text("> Presiona '1' para continuar", 550, 560);
    
    if (keyPressed)
    if(key == '1')
    pantalla++;
  }
  
  void Instrucciones() {
    image(instrucciones,0,0); 
    textFont(h);
    textSize(80);
    textAlign(CENTER, CENTER);
    text("Instrucciones:", width/2, 100);
    textFont(g);
    textSize(20);
    text("-Presiona 'a' para agregar un nuevo asteroide y 'z' para eliminarlos",width/2,180); 
    text("-Presiona 'e' para agregar una nueva estrella y 'd' para eliminarlas",width/2,230);
    text("-Presiona 'm' para agregar un nuevo meteorito y 'l' para eliminarlos",width/2,280);
    text("-Presiona 'n' para agregar una nueva nave y 'o' para eliminarlas",width/2,330);
    text("(Puedes dar click en el mouse para hacer una captura de pantalla)",width/2,400);
    textSize(25);
    textAlign(CENTER,CENTER);
    text("> Presiona '2' para continuar", 550, 560);

    
    if (keyPressed)
    if(key == '2')
    pantalla++;
  }
  
  void Stellar(){
  background(0);
  if(frameCounter % 1 == 0) {
    estrellas.add(new Estrella());
  }
  
   if(frameCounter % 20 == 0) {
    meteoritos.add(new Meteorito());
  }
  
   if(frameCounter % 6 == 0) {
     asteroides.add(new Asteroide());
   }
   
   if(frameCounter % 40 == 0) {
     naves.add(new Nave());
   }
  frameCounter++;
 
  
   for(Movimiento asteroide : asteroides) {
   asteroide.update();
   asteroide.dibujar();
  }
  
   for(Movimiento estrella : estrellas) {
    estrella.update();
    estrella.dibujar();
  }
  
   for(Movimiento meteorito : meteoritos) {
    meteorito.update();
    meteorito.dibujar();
  }
  
   for(Movimiento naves : naves) {
    naves.update();
    naves.dibujar();
  }

    if (keyPressed)
    if(key == '3')
    exit();

  }
}
