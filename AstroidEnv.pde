// Class Name (Astroid)
class AstroidEnv
{
 float x;
 float y;
 
 float dx;
 float dy;
 
 float speedAst;
 float massAst;
 float sizeAst;
 float colorAst;
 
 float angle = 0;
 float rotationSpeed;
 
 // Constructor
AstroidEnv(float x, float y)
{
    this.sizeAst = random(10, 20);
    this.colorAst = random(130, 155);
    this.x = x;
    this.y = y;
    
    // Mass is depends on the sizeAst.
    massAst = sizeAst * 0.5;
    
    // Speed depends on mass. (Greater Mass = Slower Speed)
    speedAst = 0.5 / massAst;
    
    // Random direction
    float a = random(TWO_PI);
    dx = sin(a);
    dy = sin(a);
    
    rotationSpeed = random(0.005, 0.02);
}

 //void animate() // Need to fix this shit, currently broken.
 {
   // Movement
   x += dx * speedAst;
   y += dy * speedAst;
   
   // Rotation
   angle += rotationSpeed;

 }
 
 //void render()
 {
   pushMatrix();
   translate(x, y);
   rotate(angle);
   
   noStroke();
   fill(colorAst,colorAst,colorAst);
   circle(x, y, sizeAst);
   square(x,y, x / sizeAst);
   
   popMatrix();
 }
}
