=begin
#Treasury Prime API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module OpenapiClient
  class CardEventIdGet200Response
    attr_accessor :message_type

    attr_accessor :amount

    attr_accessor :bank_id

    attr_accessor :org_id

    attr_accessor :decline_reason

    attr_accessor :currency

    attr_accessor :status

    attr_accessor :id

    attr_accessor :card_id

    attr_accessor :trace_id

    attr_accessor :network

    attr_accessor :network_created_at

    attr_accessor :merchant

    attr_accessor :processor

    attr_accessor :networkdata

    attr_accessor :atm

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'message_type' => :'message_type',
        :'amount' => :'amount',
        :'bank_id' => :'bank_id',
        :'org_id' => :'org_id',
        :'decline_reason' => :'decline_reason',
        :'currency' => :'currency',
        :'status' => :'status',
        :'id' => :'id',
        :'card_id' => :'card_id',
        :'trace_id' => :'trace_id',
        :'network' => :'network',
        :'network_created_at' => :'network_created_at',
        :'merchant' => :'merchant',
        :'processor' => :'processor',
        :'networkdata' => :'networkdata',
        :'atm' => :'atm'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'message_type' => :'Enum',
        :'amount' => :'String',
        :'bank_id' => :'String',
        :'org_id' => :'String',
        :'decline_reason' => :'String',
        :'currency' => :'String',
        :'status' => :'Enum',
        :'id' => :'String',
        :'card_id' => :'String',
        :'trace_id' => :'String',
        :'network' => :'Enum',
        :'network_created_at' => :'Datetime',
        :'merchant' => :'Struct',
        :'processor' => :'Enum',
        :'networkdata' => :'Object',
        :'atm' => :'Struct'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::CardEventIdGet200Response` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::CardEventIdGet200Response`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'message_type')
        self.message_type = attributes[:'message_type']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'bank_id')
        self.bank_id = attributes[:'bank_id']
      end

      if attributes.key?(:'org_id')
        self.org_id = attributes[:'org_id']
      end

      if attributes.key?(:'decline_reason')
        self.decline_reason = attributes[:'decline_reason']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'card_id')
        self.card_id = attributes[:'card_id']
      end

      if attributes.key?(:'trace_id')
        self.trace_id = attributes[:'trace_id']
      end

      if attributes.key?(:'network')
        self.network = attributes[:'network']
      end

      if attributes.key?(:'network_created_at')
        self.network_created_at = attributes[:'network_created_at']
      end

      if attributes.key?(:'merchant')
        self.merchant = attributes[:'merchant']
      end

      if attributes.key?(:'processor')
        self.processor = attributes[:'processor']
      end

      if attributes.key?(:'networkdata')
        self.networkdata = attributes[:'networkdata']
      end

      if attributes.key?(:'atm')
        self.atm = attributes[:'atm']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      pattern = Regexp.new(/^-?[0-9]+[.][0-9][0-9]$/)
      if !@amount.nil? && @amount !~ pattern
        invalid_properties.push("invalid value for \"amount\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@amount.nil? && @amount !~ Regexp.new(/^-?[0-9]+[.][0-9][0-9]$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      pattern = Regexp.new(/^-?[0-9]+[.][0-9][0-9]$/)
      if !amount.nil? && amount !~ pattern
        fail ArgumentError, "invalid value for \"amount\", must conform to the pattern #{pattern}."
      end

      @amount = amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          message_type == o.message_type &&
          amount == o.amount &&
          bank_id == o.bank_id &&
          org_id == o.org_id &&
          decline_reason == o.decline_reason &&
          currency == o.currency &&
          status == o.status &&
          id == o.id &&
          card_id == o.card_id &&
          trace_id == o.trace_id &&
          network == o.network &&
          network_created_at == o.network_created_at &&
          merchant == o.merchant &&
          processor == o.processor &&
          networkdata == o.networkdata &&
          atm == o.atm
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [message_type, amount, bank_id, org_id, decline_reason, currency, status, id, card_id, trace_id, network, network_created_at, merchant, processor, networkdata, atm].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end