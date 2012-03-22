# encoding: utf-8

require 'test_helper'

class TabularTextBuilderTest < ActiveSupport::TestCase
  setup do
    @builder = TabularText::Builder.new

    2.times do
      @builder.line { |l| l.field "STR" }
    end
  end

  test 'joins lines with CR+LF'do
    assert_equal "STR\r\nSTR", @builder.render
  end  

  test 'returns ascii' do
    assert_equal Encoding::ASCII, @builder.render.encoding
  end
end
