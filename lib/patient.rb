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
  
  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end
  
  def appointments 
    Appointment.all.collect {|appointment| appointment.patient == self}
  end
  
  def doctors 
    Doctor.all.collect {|doctor| doctor.patient == self }
  end
end

