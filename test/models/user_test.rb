require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should save user" do
    sample_user = User.new(age: 23, name: "Super awesome name")
    sample_user.articles << Article.new(title: "Super Awesome Writing", user: sample_user)

    sample_user.transaction do
      if sample_user.save
        puts "Saving"
      end
    end

    assert_equal sample_user.id, Article.all.last.user_id, "id should be equal"
  end
end
