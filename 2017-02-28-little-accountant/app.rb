require_relative('parser')

class Bank
  attr_reader :accounts

  def initialize
    @accounts = []
  end

  def add_accounts(new_accounts)
    @accounts = @accounts + new_accounts
  end
end

class Account
  attr_reader :id, :name
  def initialize(id, name)
    @id = id
    @name = name
  end
end

class Journal
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add_transactions(new_transactions)
    @transactions = @transactions + new_transactions
  end

  def balance
    # make sure this is balanced
    # debit - credit
  end
end

class Transaction
  attr_reader :account_id, :period, :debit, :credit
  def initialize(account_id, period, debit, credit)
    @account_id = account_id
    @period = period # FORMAT DATE: JAN-16
    @debit = debit.to_i
    @credit = credit.to_i
  end
end


bank = Bank.new
journal = Journal.new

accounts = Parser.accounts("#{File.dirname(__FILE__)}/accounts.csv")
transactions = Parser.journal("#{File.dirname(__FILE__)}/journal.csv")

bank.add_accounts(accounts)

journal.add_transactions(transactions)
journal.balance
