require 'test_helper'

class NavigationTest < ActiveSupport::IntegrationCase
  setup do
    visit root_path(format: 'text')
  end

  test 'renders using tabular' do
    assert_match /tabular-text/, page.body    
  end

  test 'renders as text/plain' do
    assert_match /text\/plain/, headers['Content-Type']
  end

  test 'renders as attachment' do
    assert_equal 'attachment; filename="tabular.txt"',
      headers['Content-Disposition']
  end

  def headers
    page.response_headers
  end
end
