module TabularText
  class Handler
    def self.call(template)
      <<-TEMPLATE
        builder = TabularText::Builder.new
        #{template.source}
        builder.render
      TEMPLATE
    end
  end
end
