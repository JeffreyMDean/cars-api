require "test_helper"

class CarsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/cars.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Car.count, data.length
  end

  test "create" do
    assert_difference "Car.count", 1 do
      post "/cars.json", params: { name: "lake", width: 800, height: 600 }
      assert_response 200
    end
  end

  test "show" do
    get "/cars/#{Car.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["car_make", "car_model", "year", "created_at", "updated_at"], data.keys
  end

  test "update" do
    car = Car.first
    patch "/cars/#{car.id}.json", params: { car_make: "Updated make" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated make", data["car_make"]
  end
end
