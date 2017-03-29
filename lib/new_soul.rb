$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module NewSoul
  def self.parse(solution_file)
    return SolutionParser.parse(solution_file)
  end
end

require 'new_soul/version'
require 'new_soul/project'
require 'new_soul/solution'
require 'new_soul/solution_parser'
