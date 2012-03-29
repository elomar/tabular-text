require 'active_support/inflector'

module TabularText
  class Field
    def initialize(content, length = nil)
      @content = content
      @length = length
    end

    def length
      @length || @content.to_s.length
    end

    def to_s
      ActiveSupport::Inflector.transliterate(pad).encode('ASCII')
    end

    private

    def pad
      case @content
      when Time
        @content.strftime "%Y%m%d"
      when Fixnum
        slice.rjust(length, "0")
      else
        slice.ljust(length, " ")
      end
    end

    def slice
      @content.to_s[0..length-1]
    end
  end
end

