module TabularText
  class Handler
    def self.call(_template, source)
      <<-TEMPLATE
        builder = TabularText::Builder.new
        #{source}
        builder.render
      TEMPLATE
    end
  end
end
