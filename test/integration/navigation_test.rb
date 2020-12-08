require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest
  setup do
    get root_path(format: :text)
  end

  test 'renders using tabular' do
    assert_match(/tabular-text/, response.body)
  end

  test 'renders as text/plain' do
    assert_match(/text\/plain/, headers['Content-Type'])
  end

  test 'renders as attachment' do
    assert_equal 'attachment; filename="tabular.txt"; filename*=UTF-8\'\'tabular.txt',
      headers['Content-Disposition']
  end

  def headers
    response.headers
  end
end
