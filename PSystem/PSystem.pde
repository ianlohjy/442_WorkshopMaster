PParticlePoint p;

PParticleSystem ps;

void setup()
{
  size(500, 500);
  
  ps = new PParticleSystem();
  ps.addParticle(new PParticlePoint(new PVector(0, 250, 0)));
  ps.addBehaviour(new ChaseTarget());
}

void draw()
{
  background(0);
  ps.updateAndDraw();
}
