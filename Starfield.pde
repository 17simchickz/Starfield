Particle[] particles;
void setup()
{
  size(500,500);
  
  
  
  particles = new Particle[800];
  
  
  particles[0] = new OddballParticle();
  particles[1] = new JumboParticle();
  
  for(int i= 2; i < particles.length; i++)
  {
    particles[i] = new NormalParticle();
  }
    
  
 
  
}
void draw()
{
  background(0);
  
  for(int i= 0; i < particles.length; i++)
  {
    particles[i].move();
    particles[i].show();
  }
 
}


class NormalParticle implements Particle
{
      double x;
      double y;
      double speed;
      double angle;
      int color1, color2, color3;
  
  
    public NormalParticle()
    {
      
      
      angle = (Math.random()*2*Math.PI);
      speed = (Math.random()*10);
      
      x = 250;
      y = 250;
      
      color1= (int)(Math.random()*255);
      color2= (int)(Math.random()*255);
      color3= (int)(Math.random()*255);
      
      
      
    }
    
    void move()
    {
       x += ((Math.cos(angle)*(int)speed));
       y += ((Math.sin(angle)*(int)speed));
          
          if(x>=500||y>=500)
      {
       x=250;
       y=250; 
      }
      
      if(x<=0||y<=0)
      {
       x=250;
       y=250; 
      }
          
          
    }
    
    void show()
    {
      
      fill(color1,color2,color3);
      ellipse((int)x,(int)y,10,10);
      
    }
    
}

interface Particle
{
  public void show();
  public void move();
}

class OddballParticle implements Particle
{
      
  
  
      double x;
      double y;
      double speed;
      double angle;
      int color1, color2, color3;
  
  
    OddballParticle()
    {
      
      
      angle = (Math.random()*2*Math.PI);
      speed = (Math.random()*5);
      x = 250;
      y = 250;
      
      color1= (int)(Math.random()*255);
      color2= (int)(Math.random()*255);
      color3= (int)(Math.random()*255);
      
      
    }
    
    void move()
    {
       x += ((Math.cos(angle)*speed));
       y += ((Math.sin(angle)*speed));
          
          
    }
    
    void show()
    {
      
      fill(color1,color2,color3);
      rect((int)x,(int)y,50,50);
      
    }
   
   
   
   
    
}
class JumboParticle extends NormalParticle implements Particle
{
  
    
   void move()
  {
    x += ((Math.cos(angle)*2));
    y += ((Math.sin(angle)*2));
    
    
  }
  
   void show()
  {
    fill(255);
    ellipse((int)x,(int)y,100,100);
  }
  
  
  
  
  
  
  
  
  }

