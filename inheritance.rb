class Mammal  
    def breathe  
      puts "inhale and exhale"  
    end  
  end  
    
  class Cat < Mammal  
    def speak  
      puts "Meow"  
    end  
  end  
    
  rani = Cat.new  
  rani.breathe  
  rani.speak  


  ### method override 

  class Bird  
    def preen  
      puts "I am cleaning my feathers."  
    end  
    def fly  
      puts "I am flying."  
    end  
  end  
    
  class Penguin < Bird  
    def fly  
      puts "Sorry. I'd rather swim."  
    end  
  end  
    
  b = Bird.new
  b.fly
  p = Penguin.new  
  p.preen  
  p.fly  


  #### class using super 
  ### you get what the parent has
  ### however you need the parameners amount so oftern use * 


  class Dog  
    def initialize *bre  
      @breed = 'camome' 
      @spot = 'touro' 
    end  

    def spar
        puts @spot
    end
  end  
    
  class Lab < Dog  
    def initialize breed, name,spot
      super(breed,spot)  
      @name = name  
    end  
    
    def to_s  
      "(#@breed, #@name)"  
    end
    
    def modify_parent
        @spot = 'mandin'
    end
  end  
    
  c =Dog.new 
  a =Lab.new "Labrador", "Benzy", 'chase' .to_s  
  a.modify_parent
  c.spar
  d =Dog.new 
  d.spar