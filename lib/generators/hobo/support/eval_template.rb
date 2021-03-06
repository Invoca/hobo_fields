# frozen_string_literal: true

module Hobo
  module Support
    module EvalTemplate
      def self.included(base)
        base.class_eval do

          private

          def eval_template(template_name)
            source  = File.expand_path(find_in_source_paths(template_name))
            context = instance_eval('binding')
            ERB.new(::File.binread(source), nil, '-').result(context)
          end
        end
      end
    end
  end
end
