class HomeController < ApplicationController
  def index
    @content = "tabular-text"

    respond_to do |format|
      format.text { render tabular: 'tabular.txt' }
    end
  end
end
