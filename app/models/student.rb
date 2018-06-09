class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  # def toggle_activation
  #   if self.active
  #     false
  #   else
  #     true
  #   end
  # end

end
