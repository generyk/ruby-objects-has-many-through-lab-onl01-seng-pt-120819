class Patient
    
  attr_reader :name

  @@all = []
   
  def initialize(name)
    @name = name 
    @@all.push(self)
  end

  def new_appointment(doctor, date) 
    Appointment.new(date, self, doctor)
  end 

  def self.all 
    @@all
  end 

  def appointments
    Appointment.all.select {|apt| apt.patient == self}
  end 

  def doctors 
    appointments.map {|doc| doc.doctor}
  end 

end