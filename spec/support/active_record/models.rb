class Event < ActiveRecord::Base
  self.primary_key = "identifier"

  acts_as_hypertable
end

class HypertableWithNoOptions < ActiveRecord::Base
  self.primary_key = "identifier"

  acts_as_hypertable
end

class HypertableWithOptions < ActiveRecord::Base
  self.primary_key = "identifier"

  acts_as_hypertable time_column: :timestamp
end

class HypertableWithCustomTimeColumn < ActiveRecord::Base
  self.table_name = "hypertable_with_custom_time_column"
  self.primary_key = "identifier"

  acts_as_hypertable time_column: :timestamp
end

class NonHypertable < ActiveRecord::Base
end
