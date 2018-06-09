class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate
    if self.active == false
      return true
    elsif self.active == true
      return false
    end
  end

end
