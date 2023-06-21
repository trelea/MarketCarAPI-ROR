require "test_helper"

class CarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get cars_url, as: :json
    assert_response :success
  end

  test "should create car" do
    assert_difference("Car.count") do
      post cars_url, params: { car: { bodytype: @car.bodytype, color: @car.color, drivetrain: @car.drivetrain, fuel: @car.fuel, mark: @car.mark, mileage: @car.mileage, model: @car.model, options: @car.options, power: @car.power, price: @car.price, transmission: @car.transmission, volume: @car.volume, year: @car.year } }, as: :json
    end

    assert_response :created
  end

  test "should show car" do
    get car_url(@car), as: :json
    assert_response :success
  end

  test "should update car" do
    patch car_url(@car), params: { car: { bodytype: @car.bodytype, color: @car.color, drivetrain: @car.drivetrain, fuel: @car.fuel, mark: @car.mark, mileage: @car.mileage, model: @car.model, options: @car.options, power: @car.power, price: @car.price, transmission: @car.transmission, volume: @car.volume, year: @car.year } }, as: :json
    assert_response :success
  end

  test "should destroy car" do
    assert_difference("Car.count", -1) do
      delete car_url(@car), as: :json
    end

    assert_response :no_content
  end
end
