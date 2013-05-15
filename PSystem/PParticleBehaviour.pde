interface PParticleBehaviour {
  PVector getForce( PVector iPos, PVector iTarget );
}

class ChaseTarget implements PParticleBehaviour
{
   PVector getForce( PVector iPos, PVector iTarget ) {
      PVector newPos = PVector.sub(iTarget, iPos);
      newPos.mult(0.01);            
      return newPos;
   }
}
