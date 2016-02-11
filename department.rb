class Department
  attr_reader :name, :staff

  def initialize(name = nil)
    @name = name
    @staff = []
  end

  def add_employee(worker)
    @staff << worker
  end


end
