module NewSoul
  class SolutionParser
    def self.parse(solution_file)
      solution = Solution.new
      return solution if not solution_file.end_with?('sln')
      return solution if not File.exist?(solution_file)
      
      File.open(solution_file, 'r:utf-8') do |f|
        current_project = nil
        f.each_line do |line|
          line.chomp!
          if /^Project/.match line
            project = parse_project_line line
            if project != nil
              solution.add_project project.guid, project
              current_project = project
            end
          elsif /^EndProject/.match line
            current_project = nil
          elsif /^\s*ProjectSection/.match line
            next
          elsif /^\s*EndProjectSection/.match line
            next
          elsif current_project != nil
            key, value = line.gsub(/\s/, '').split('=')
            current_project.add_reference value
          else
            next
          end
        end
      end
      
      return solution
    end
    
    def self.parse_project_line(line)
      begin
        type, attributes = line.split('=')
        type = type.scan(/Project\("([^"]*)"\)/).first.first
        name, path, guid = attributes.split(',').map! { |str| str.scan(/"([^"]*)"/).first.first }
        
        return Project.new type, name, path, guid
      rescue
        return nil
      end
    end
  end
end
