class Project
    attr_accessor :title
    attr_reader :backers

    def initialize(title)
        @title = title
        @backers = [] 
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        array_of_backers_projects = ProjectBacker.all.select {|backer| backer.project == self}
        array_of_backers_projects.map {|a_backer| a_backer.backer}
    end
end