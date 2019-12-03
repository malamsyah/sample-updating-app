class ChangeUserIdSequence < ActiveRecord::Migration
  def up
    execute("ALTER SEQUENCE users_id_seq RESTART WITH 990900900")
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
