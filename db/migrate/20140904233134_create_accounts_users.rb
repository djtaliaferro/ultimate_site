class CreateAccountsUsers < ActiveRecord::Migration
  def change
    create_table :accounts_users do |t|
      t.belongs_to :account, index: true
      t.belongs_to :user, index: true
    end
  end
end
