class Task
    attr_reader :content, :id, :created_at
    @@current_id = 1


    def self.set_current_id(id)
        @@current_id = id
    end

    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = 0
        @created_at = Time.now
        @updated_at = nil
    end

    def completed?
    	if @complete == 1
    		true
    	else
    		false
    	end
    end

    def complete!
    	@complete = 1
    end

    def make_incomplete!
    	@complete = 0
    end

    def update_content!(content)
    	@content = content
    	@updated_at = Time.now
    end

    def to_s
    	"id: #{@id} content: #{@content} "
    end
end