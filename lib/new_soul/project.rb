module NewSoul
  class Project
    attr_accessor :type, :name, :path, :guid, :references
    
    def initialize(type, name, path, guid)
      @type = type
      @name = name
      @path = path
      @guid = guid
      @references = []
    end
    
    def add_reference(reference)
      @references << reference
    end
  end
end
