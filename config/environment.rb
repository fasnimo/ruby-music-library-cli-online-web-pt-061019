require 'bundler'
Bundler.require

module Concerns
  module Findable
  def find_by_name(name)
      all.find do |x| x.name == name
      end
  end
  def find_or_create_by_name(name)
      if self.find_by_name(name).nil
  end

end
end
require_all 'lib'
