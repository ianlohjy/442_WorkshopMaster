AE_AnimationEngineManager animation_manager;

ArrayList breads;
int breadsCount = 13;

void setup() {
   background(255, 255, 255);
   size(1024,768, JAVA2D);
  
  animation_manager = new AE_AnimationEngineManager("aardvark.png", 200, 200);
 
  breads = new ArrayList();
  for (int i = 0; i < breadsCount; i++) {
     //AI bread = //new AI("bread.png", (int) random(0, width), (int) random(0, height), (int) random(0.1, 2.0));
     breads.add(new AI("bread.png", (int) random(0, width), (int) random(height), (int) random(3, 6)));
  } 
}

void draw() {
  background(255 ,255 ,255);
  
  
  for (int i = 0; i < breadsCount; i++) {
     AI bread = (AI) breads.get(i); 
     
     //bread.animate(mouseX, mouseY);
     bread.animate((int) animation_manager.pos.x, (int) animation_manager.pos.y);
     if (random(0, 1) < 0.003) {
       bread.cState = (bread.cState == 1 ? 0 : 1);
     }
  }
 
  animation_manager.animate(); 
}
