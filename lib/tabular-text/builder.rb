module TabularText
  class Builder
    def initialize
      @lines = []
    end

    def line
      Line.new.tap do |line|
        @lines << line
        yield line
      end
    end

    def render
      @lines.join("\r\n")
    end
  end
end
