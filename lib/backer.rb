class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        arr0 = []
        ProjectBacker.all.map do |p| 
            if p.backer == self 
                arr0 << p.project
            end
        end
        arr0.uniq
    end
end