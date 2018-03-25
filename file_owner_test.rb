require "minitest/autorun"
require_relative "file_owners.rb"
class FileOwnersTest < Minitest::Test
  def many_users_many_files
    {'CV.doc' => 'David', 'info.txt' => 'Per', 'photo.jpg' => 'David', 'Ansökan.pdf' => 'Ali'}
  end

  def sorted_many_users_many_files
    {'David' => ['CV.doc','photo.jpg'], 'Per' => ['info.txt'], 'Ali' => ['Ansökan.pdf']}
  end

  def one_user_one_file
    {'CV.doc' => 'Per', 'info.txt' => 'Per','photo.jpg' => 'Per', 'Ansökan.pdf' => 'Per'}
  end

  def sorted_one_user_one_file
    {'Per' => ['CV.doc', 'info.txt', 'photo.jpg', 'Ansökan.pdf']}
  end

  def many_users_one_file
    {'CV.doc' => 'David', 'info.txt' => 'Per', 'photo.jpg' => 'Eric', 'Ansökan.pdf' => 'Ali'}
  end

  def sorted_many_users_one_file
    {'David' => ['CV.doc'], 'Per' => ['info.txt'],'Eric' =>['photo.jpg'], 'Ali' => ['Ansökan.pdf']}
  end


  def test_many_users_many_files
    assert_equal FileOwners.group_by_owners(many_users_many_files), sorted_many_users_many_files
  end

  def test_one_user_one_file
    assert_equal FileOwners.group_by_owners(one_user_one_file), sorted_one_user_one_file
  end

  def test_many_users_one_file
    assert_equal FileOwners.group_by_owners(many_users_one_file), sorted_many_users_one_file
  end


end