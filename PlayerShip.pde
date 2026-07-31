// Player Class (The Player)
class PlayerShip
{
 // Class Variables
 int x;
 int y;
 int size;
 float health;
 float shipSpeed = 0.02;
 float amplitude = 5;
 
  // Constructor
  PlayerShip(int x, int y)
  {
    this.size = 50;
    this.x = x;
    this.y = y;
  }
  //Drawing Player
  void render()
  {
    // Calculate offsets every frame
    float offsetX = sin(frameCount * shipSpeed) * amplitude;
    float offsetY = cos(frameCount * shipSpeed) * amplitude;

    // Draw ship with idle animation
    noStroke();
    fill(125, 125, 125);
    circle(x + offsetX, y + offsetY, size);
    fill(225, random(100,155), 0);
    circle(x + offsetX, y + offsetY, size - 10);
  }
    void display()
    {
      render();
    }
}
