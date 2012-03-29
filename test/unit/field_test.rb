# encoding: utf-8

require 'test_helper'

class TabularTextFieldTest < ActiveSupport::TestCase
  include TabularText

  test 'string without length returns string' do
    assert_equal "STRING", Field.new("STRING").to_s
  end

  test 'string with length pads with spaces to the right' do
    assert_equal "STRING    ", Field.new("STRING", 10).to_s
  end
  
  test 'string too big for length gets cut' do
    assert_equal "STR", Field.new("STRING", 3).to_s
  end

  test 'nil with length pads with spaces to the right' do
    assert_equal " " * 5, Field.new(nil, 5).to_s
  end
  
  test 'number without length returns number' do
    assert_equal "123", Field.new(123).to_s
  end

  test 'number with length pads with zeros to the left' do
    assert_equal "00123", Field.new(123, 5).to_s
  end

  test 'time returns YYYYMMDD' do
    assert_equal "19901216", Field.new(Time.new(1990, 12, 16)).to_s
  end

  test 'is ascii' do
    assert_equal Encoding::ASCII, Field.new("STRING").to_s.encoding
  end

  test 'special chars get normalized' do
    assert_equal "nao", Field.new("não").to_s
  end
end
