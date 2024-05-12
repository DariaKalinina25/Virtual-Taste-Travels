# frozen_string_literal: true

# the `ApplicationRecord` class is the base class for all models in an application that use ActiveRecord.
class ApplicationRecord < ActiveRecord::Base
  # we indicate that this class is abstract and should not be used directly to create records in the database.
  primary_abstract_class
end
