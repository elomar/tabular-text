module TabularText
  class Line
    def initialize
      @fields = []
    end

    def field(content, length = nil)
      @fields << Field.new(content, length)
    end

    def to_s
      @fields.join
    end
  end
end
