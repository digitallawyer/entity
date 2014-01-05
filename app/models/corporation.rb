class Corporation < ActiveRecord::Base
	has_one :registered_agent
	accepts_nested_attributes_for :registered_agent

	has_one :incorporator
	accepts_nested_attributes_for :incorporator
end
