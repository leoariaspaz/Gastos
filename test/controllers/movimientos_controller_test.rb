require 'test_helper'

class MovimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movimiento = movimientos(:one)
  end

  test "should get index" do
    get movimientos_url
    assert_response :success
  end

  test "should get new" do
    get new_movimiento_url
    assert_response :success
  end

  test "should create movimiento" do
    assert_difference('Movimiento.count') do
      post movimientos_url, params: { movimiento: { fecha_mov: @movimiento.fecha_mov, importe: @movimiento.importe, transaccion_id: @movimiento.transaccion_id } }
    end

    assert_redirected_to movimiento_url(Movimiento.last)
  end

  test "should show movimiento" do
    get movimiento_url(@movimiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_movimiento_url(@movimiento)
    assert_response :success
  end

  test "should update movimiento" do
    patch movimiento_url(@movimiento), params: { movimiento: { fecha_mov: @movimiento.fecha_mov, importe: @movimiento.importe, transaccion_id: @movimiento.transaccion_id } }
    assert_redirected_to movimiento_url(@movimiento)
  end

  test "should destroy movimiento" do
    assert_difference('Movimiento.count', -1) do
      delete movimiento_url(@movimiento)
    end

    assert_redirected_to movimientos_url
  end
end
