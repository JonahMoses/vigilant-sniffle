require 'csv'

module Parser
  extend self

  def accounts(file)
    accounts = []
    CSV.foreach(file, { headers: true, col_sep: ';' }) do |row|
      accounts << Account.new(row.field("ACCOUNT"), row.field("LABEL"))
    end
    accounts
  end

  def journal(file)
    transactions = []
    CSV.foreach(file, { headers: true, col_sep: ';' }) do |row|
      transactions << Transaction.new(
        row.field("ACCOUNT"),
        row.field("PERIOD"),
        row.field("DEBIT"),
        row.field("CREDIT")
      )
    end
    transactions
  end
end
