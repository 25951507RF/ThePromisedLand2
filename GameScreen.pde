// Variables / Declarations


// Class/Arrays/Entities



void drawGameScreen()
{
 {
  speed = map(width, 0, width, 0, 25);                // This is the speed variable that will control how fast the background stars move past the screen.
  background(0);                                     // The background "Space" is black.
  translate(width/2, height/2);                       // Ensures that the stars come forward (towards viewpoint) instead of off to the right. (This also effects the spawn of Enemies, and how they interact with the Target. This also effects the TargetShip itself.)
  for (int i = 0; i < stars.length; i++)
  {
    stars[i].update();
    stars[i].show();
  }
  translate(-width/2, -height/2);
  for (AstroidEnv a : astroids) 
  {
    a.animate();
    a.render();
  }
 }
 translate(width/2, height/2); 
   player.render();
}
