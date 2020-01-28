class Doctor
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all 
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
    
  def appointments
    Appointment.all.select {|apt| apt.doctor == self}
  end

  def patients 
    appointments.map {|patients| patients.patient}
  end 

end