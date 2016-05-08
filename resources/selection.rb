actions :add
default_action :add if defined?(default_action)

def initialize(*args)
  super
  @action = :add
end

attribute :question, kind_of: String, name_attribute: true
attribute :package, kind_of: String, default: 'debconf'
attribute :type, kind_of: String, default: 'select'
attribute :value, kind_of: String
