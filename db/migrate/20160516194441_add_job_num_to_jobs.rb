class AddJobNumToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :job_num, :string
  end
end
