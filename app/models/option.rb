class Option < ActiveRecord::Base
before_create :set_active


  private

  def set_active
    self.isactive = true
  end
end
