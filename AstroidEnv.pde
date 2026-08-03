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
}

 void animate() // Need to fix this shit, currently broken.
 {
   // Movement

 }
 
 void render()
 {
   pushMatrix();
   translate(x, y);
   rotate(angle);
   
   noStroke();
   fill(colorAst,colorAst,colorAst);
   circle(x, y, sizeAst);
   
   
   popMatrix();
 }
}
