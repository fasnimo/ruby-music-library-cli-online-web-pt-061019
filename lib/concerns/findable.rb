require 'pry'
module Concerns::Findable

  def find_by_name(name)
      all.find do |x| x.name == name
    end
  end

  def find_or_create_by_name(name)
      find_by_name(name) || create(name)
  end


end
