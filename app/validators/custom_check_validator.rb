# ejemplo de https://spin.atomicobject.com/2015/06/17/custom-validations-rails/
class CustomCheckValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, parameters)
    if invalid(attribute, parameters)
      record.errors[attribute] << 'attribute is invalid.'
    end
  end
end