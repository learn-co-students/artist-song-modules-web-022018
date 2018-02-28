module Memorable
  module ClassMethod


    def find_by_name(name)
      self.all.detect{|a| a.name == name}
    end

    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end



  end
  module InstanceMethod
    def to_param
      name.downcase.gsub(' ', '-')
    end

    def save
      self.class.all << self
    end



  end

end
