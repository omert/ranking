module Rankable
  def self.included(klass)
    klass.extend(ClassMethods)
  end
  
  module ClassMethods
    def choose_two_at_random
      find(:all, :order => 'rand()', :limit => 2)
    end
  end
end

ActiveRecord::Base.class_eval { include Rankable }
