require 'test_helper'

class TipoTransaccionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "no debe grabar el tipo de transacción" do
  	tt = TipoTransaccion.new
  	assert_not tt.save
   	assert tt.invalid?
	 	assert tt.errors[:descripcion].any?
  end

  test "x debe reportar un error" do
  	assert_raises(NameError) do
  		a
  	end
  end
end
