class PParticleSystem
{
  ArrayList<PParticlePoint> mParticles;
  ArrayList<PParticleBehaviour> mBehaviours;
  int mNumParticles;
  
  PParticleSystem()
  {
    mParticles = new ArrayList<PParticlePoint>();  
    mBehaviours = new ArrayList<PParticleBehaviour>();
  }
  
  void addParticle(PParticlePoint p)
  {
    mParticles.add(p);
  }
  
  void addBehaviour(PParticleBehaviour b)
  {
    mBehaviours.add(b);
  }
    
  void applyBehaviour(PParticlePoint p, int bIdx)
  {
    PVector f = (((PParticleBehaviour)mBehaviours.get(bIdx)).getForce(p.mPos, new PVector(mouseX, mouseY, 0.0)));
    println( f);
    p.applyForce(f);
  }
  
  void updateAndDraw()
  {
    for(PParticlePoint p : mParticles) {
      applyBehaviour(p, 0);
      p.update();
      p.draw();
    }
  }
}
