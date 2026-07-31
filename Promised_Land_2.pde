// Imported Libraries
import processing.sound.*;
SoundFile file;

//Variables
int i = 0;
int value = 0;
float speed;
PFont font;

// Class and Array/Entity Calls
ArrayList<AstroidEnv> astroids = new ArrayList<AstroidEnv>();
Star[] stars = new Star[500];
PlayerShip player;

// Bytes | Game Screens
byte MainMenu = 1;
byte GameScreen = 2;
byte currentScreen = GameScreen; 


void setup()
{
  size(800,800);
  // Draw the Stars
    for (int i = 0; i < stars.length; i++)                 // This for loop creates an array of stars that will be used in other display screens.
  {
    stars[i] = new Star();                               // The star entity is created here as a new entity.
  }
    for (int i = 0; i < 20; i++) {
    float x = random(width);
    float y = random(height);
    astroids.add(new AstroidEnv(x, y));
  }
  
  // Draw Player
  player = new PlayerShip(0,0);
}

void draw()                                             //Within this draw I have created a switch that will change the game screen depending on player actions.
{
  switch(currentScreen)
  {
  case 1:
    drawMainMenu();
    break;
    
  case 2:
    drawGameScreen();                               // Draws the screen that will display the settings for the game.
    break;

  }
}
