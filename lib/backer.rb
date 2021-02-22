class Backer
    attr_accessor :name
    attr_reader :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        array_of_backers_projects = ProjectBacker.all.select {|project| project.backer == self}
        array_of_backers_projects.map {|a_project| a_project.project}
    end

end