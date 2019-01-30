require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'
require 'pry'

class HouseTest < MiniTest::Test




  def test_house_exist
    house = House.new("$400000","123 sugar lane")

    assert_instance_of House, house
  end

  def test_house_has_rooms_available
    house = House.new("$400000","123 sugar lane")

    assert_equal [], house.rooms
  end

  def test_rooms_being_added_to_house
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    house = House.new("$400000","123 sugar lane")

    assert_equal [room_1], house.add_room(room_1)
    assert_equal [room_1,room_2], house.add_room(room_2)
  end

  def test_that_the_rooms_are_stored_in_array
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    room_3 = Room.new(:living_room, 25, 15)
    room_4 = Room.new(:basement, 30, 41)
    house = House.new("$400000","123 sugar lane")
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)

    assert_equal [room_1,room_2,room_3,room_4], house.rooms
  end

  def test_if_rooms_available_by_category
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    room_3 = Room.new(:living_room, 25, 15)
    room_4 = Room.new(:basement, 30, 41)
    house = House.new("$400000","123 sugar lane")
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)

    assert_equal [room_4], house.rooms_from_category(:basement)
  end


end
