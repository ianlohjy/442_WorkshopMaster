class PParticlePoint
{
  PVector mPos;
  PVector mVel;
  PVector mAccel;
  
  float mMaxVel;
  float mMaxAccel;
  float mFriction;
  
  PParticlePoint(PVector iPos) 
  {
    mPos = iPos;
    mVel = new PVector();
    mAccel = new PVector();
    
    mMaxVel = 5;
    mMaxAccel = 2;
    mFriction = 0.8;
  }
  
  void setLimits(float iMaxVel, float iMaxAccel, float iFriction)
  {
     mMaxVel = iMaxVel;
     mMaxAccel = iMaxAccel;
     mFriction = iFriction;
  }
  
  void applyForce(PVector iForce)
  {
     iForce.limit(mMaxAccel);
     mAccel.add(iForce);
  }
 
  void update()
  {
     mVel.add(mAccel);
     mVel.limit(mMaxVel);
     mAccel.mult(0);
     
     mPos.add(mVel);
     mVel.mult(mFriction);
  }
  
  void draw() {
     ellipse(mPos.x, mPos.y, 4, 4);
  }
}
