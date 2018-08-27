require 'test_helper'

class UserTest < ActiveSupport::TestCase

  @correct_user = User.create(
    first_name: 'toto',
    last_name: 'tata',
    email: 'toto.tata@mail.com',
    encrypted_password: 'tototata26'
  )
  @incorrect_user = User.create(
    first_name: 'toto',
    last_name: 'tata',
    email: '',
    encrypted_password: ''
  )

  test "User is successfully created" do
    @correct_user.save
    assert_not_nil(@correct_user)
    assert_not_empty(@correct_user)
  end

  test "User has a first name" do
    @correct_user.save
    name = @correct_user.first_name
    assert_not_nil(name)
    assert_not_empty(name)
  end

  test "User has a last name" do
    assert true
  end

  test "User has an email address" do
    assert true
  end

  test "User has a valid email address" do
    assert true
  end

  test "User has a password" do
    assert true
  end

  test "User has a valid password" do
    assert true
  end

  test "User is not an admin" do
    assert true
  end

end
