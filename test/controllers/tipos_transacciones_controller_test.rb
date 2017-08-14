require 'test_helper'

class TiposTransaccionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_transaccion = tipos_transacciones(:one)
  end

  test "should get index" do
    get tipos_transacciones_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_transaccion_url
    assert_response :success
  end

  test "should create tipo_transaccion" do
    assert_difference('TipoTransaccion.count') do
      post tipos_transacciones_url, params: { tipo_transaccion: { descripcion: @tipo_transaccion.descripcion, habilitado: @tipo_transaccion.habilitado } }
    end

    assert_redirected_to tipo_transaccion_url(TipoTransaccion.last)
  end

  test "should show tipo_transaccion" do
    get tipo_transaccion_url(@tipo_transaccion)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_transaccion_url(@tipo_transaccion)
    assert_response :success
  end

  test "should update tipo_transaccion" do
    patch tipo_transaccion_url(@tipo_transaccion), params: { tipo_transaccion: { descripcion: @tipo_transaccion.descripcion, habilitado: @tipo_transaccion.habilitado } }
    assert_redirected_to tipo_transaccion_url(@tipo_transaccion)
  end

  test "should destroy tipo_transaccion" do
    assert_difference('TipoTransaccion.count', -1) do
      delete tipo_transaccion_url(@tipo_transaccion)
    end

    assert_redirected_to tipos_transacciones_url
  end
end
