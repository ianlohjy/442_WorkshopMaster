PParticlePoint p;
PParticleSystem ps;

PVector mouseTarget;
void setup()
{
  size(500, 500);
  
  mouseTarget = new PVector(mouseX, mouseY, 0.0);
  
  ps = new PParticleSystem();
  ps.addParticle(new PParticlePoint(new PVector(0, 250, 0)));
  ps.addBehaviour(new ChaseTarget( mouseTarget ));
  ps.addBehaviour(new Jitter());
}

void draw()
{
  background(0);
  mouseTarget.x = mouseX;
  mouseTarget.y = mouseY;
  ps.updateAndDraw();
}
