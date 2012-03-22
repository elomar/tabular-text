# encoding: utf-8

require 'test_helper'

class TabularTextLineTest < ActiveSupport::TestCase
  setup do
    @line = TabularText::Line.new
  end

  test 'joins fields'do
    2.times do
      @line.field "STR"
    end

    assert_equal "STRSTR", @line.to_s
  end  

  test 'creates with content and length' do
    @line.field "STR", 10

    assert_equal TabularText::Field.new("STR", 10).to_s, @line.to_s
  end
end
