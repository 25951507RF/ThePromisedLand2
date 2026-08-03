// Class Name (Astroid)
class AstroidEnv
{
 float x;
 float y;
 
 float dx;
 float dy;
 
 float speedAst;
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
    angle = random(15, 45);
    
    
    
}

 void animate() // Need to fix this shit, currently broken.
 {
   // Movement

 }
 
 void render()
 {
   pushMatrix();
   translate(x, y);
   
   noStroke();
   fill(colorAst,colorAst,colorAst);
   square(x, y, sizeAst);
   
   popMatrix();
 }
}
