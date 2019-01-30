require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require 'pry'

class RoomTest < MiniTest::Test

  def test_room_exist
    room = Room.new(:bedroom,10,13)

    assert_instance_of Room, room
  end

  def test_category_is_a_bedroom
    room = Room.new(:bedroom,10,13)

    assert_equal :bedroom, room.category
  end

  def test_the_area_of_the_room
    room = Room.new(:bedroom,10,13)

    assert_equal 130, room.area
  end

  def test_case_name

  end

end
