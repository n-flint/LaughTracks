class Special < ActiveRecord::Base

  validates_presence_of :runtime_mins

  def self.average_runtime
    average(:runtime_mins).round
  end

end
