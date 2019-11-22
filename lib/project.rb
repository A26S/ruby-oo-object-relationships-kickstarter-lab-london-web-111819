class Project

    attr_reader :title
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        arr = []
        ProjectBacker.all.map do |p| 
            if p.project == self
                arr << p.backer
            end
        end
        arr.uniq
    end
end