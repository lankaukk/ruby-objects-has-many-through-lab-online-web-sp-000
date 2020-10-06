class Patient
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end
  
  def new_appointment(date, Doctor)
    Appointment.new(date, Doctor, self)
  end
  
  def appointments 
    
  end
end