class ApplicationController < ActionController::Base
  def hello
    render htmi: "helloworld!"
  end
end