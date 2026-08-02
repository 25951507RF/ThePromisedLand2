// Variables / Declarations


// Class/Arrays/Entities



void drawGameScreen()
{
 {
  speed = map(width, 0, width, 0, 25);                // This is the speed variable that will control how fast the background stars move past the screen.
  background(0);                                     // The background "Space" is black.
  for (int i = 0; i < stars.length; i++)
  {
    stars[i].update();
    stars[i].show();
  }
  for (AstroidEnv a : astroids) 
  {
    //a.animate();
   // a.render();
  }
 }
   player.render();
}
