#testのフォルダ の中の helperのテストのフォルダ に application_helperのテストのファイル を作る
require 'test_helper'
 
class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    #full_title == "Ruby on Rails Tutorial Sample App"の意味
    assert_equal full_title,         "Ruby on Rails Tutorial Sample App"
    #full_title("Help") == "Help | Ruby on Rails Tutorial Sample App"の意味
    assert_equal full_title("Help"), "Help | Ruby on Rails Tutorial Sample App"
  end
end