module NewSoul
  class Solution
    attr_accessor :projects

    def initialize  
      @projects = {}
    end
    
    def add_project(guid, project)
      @projects[guid] = project
    end
  end
end
