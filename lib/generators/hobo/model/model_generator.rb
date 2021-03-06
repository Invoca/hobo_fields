# frozen_string_literal: true

require 'rails/generators/active_record'
require 'generators/hobo/support/model'

module Hobo
  class ModelGenerator < ActiveRecord::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    include Hobo::Support::Model
  end
end
