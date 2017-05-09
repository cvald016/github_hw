class Table
  @@next_table_id = 1
  attr_reader :num_legs
  attr_writer :num_legs
  attr_reader :id
  #attr_accessor :num_legs #this combines reader and writer

  def initialize(num_legs) #this is a special method
    @id = @@next_table_id
    @@next_table_id += 1
    @tabletop = []
    @num_legs = num_legs
  end

  def change_next_id(next_id)
    @@next_table_id = next_id
  end

  def put_on(something)
    @tabletop << something
  end

  def look_at
    @tabletop
  end

  def self.has_legs?
      true
  end

  def self.next_table_id
    @@next_table_id
  end

  def preview_next_id
    @@next_table_id
  end

  def a_public_method
    a_private_method
  end

  private #everything here to the end of the class, is private.

  def a_private_method
    "I cannot be called directly on an instance."
  end

  # def num_legs=(new_number_of_legs) #this is the setter method
  #   @num_legs = new_number_of_legs
  # end
end
