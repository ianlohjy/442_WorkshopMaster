////////////////////////////////IAN LOH MDDN442///////////////////////////////////////////
///////////////////////////////////WORKSHOP 5/////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////
//Explosion! class accepts the following arguements//////////////////// \\\\\\\ //////////
//////////////////////////////////////////////////////////////////////  o    o  //////////
//Explosion(x,y,density,radius,energy);////////////////////////////////  +___  ///////////
//x,y are the positions in world space//////////////////////////////////  \_/  ///////////
//density is the number of particles//////////////////////////////////////////////////////
//radius is the initial starting size of the explosion////////////////////////////////////
//energy is the amount of energy in the system////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////
//Explosion will run only once when started. 
//After that you will have to use explosion.reset (xpos, ypos) to restart the explosion.
//////////////////////////////////////////////////////////////////////////////////////////


//Explosion explosion;
//
//void setup(){
//
//size (1024,768);
//background (204);
//makeExplosion(width/2,height/2,200,10,35);  
//  
//}
//
//void makeExplosion(float x, float y, int d, float r, float e){
//   explosion = new Explosion(x,y,d,r,e);
//   explosion.build();  // generates particles, only needed once
//}
//
//void runExplosion(){
//  explosion.start(); // starts the very first explosion
//}
//
//
//void draw(){
//  background (204);
//  explosion.start();
//  
//  //explosion.reset(x,y); // restarts explosion at x,y
//  
//}