require 'csv'

module Parser
  extend self

  def accounts(file)
  end

  def journal(file)
  end
end

class Bank
  attr_reader :accounts

  def initialize
    @accounts = []
  end
end

class Account
  # stuff
end

class Journal
  attr_reader :transactions

  def initialize
    @transactions = []
  end
  # stuff
end

class Transaction
  # stuff
end


bank = Bank.new
journal = Journal.new

accounts = Parser.accounts("accounts.csv")
transactions = Parser.journal("journal.csv")

bank.add_accounts(accounts)
journal.add_transactions(transactions)
