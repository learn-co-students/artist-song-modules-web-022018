module Memorable
  module ClassModule
    def reset_all
      all.clear
    end

    def count
      all.count
    end
  end
  module InstanceModule
    def initialize
      self.class.all << self
    end
  end

end
