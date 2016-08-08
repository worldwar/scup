require 'hanami/model'
require 'hanami/mailer'
Dir["#{ __dir__ }/scup/**/*.rb"].each { |file| require_relative file }

Hanami::Model.configure do
  ##
  # Database adapter
  #
  # Available options:
  #
  #  * File System adapter
  #    adapter type: :file_system, uri: 'file:///db/bookshelf_development'
  #
  #  * Memory adapter
  #    adapter type: :memory, uri: 'memory://localhost/scup_development'
  #
  #  * SQL adapter
  #    adapter type: :sql, uri: 'sqlite://db/scup_development.sqlite3'
  #    adapter type: :sql, uri: 'postgres://localhost/scup_development'
  #    adapter type: :sql, uri: 'mysql://localhost/scup_development'
  #
  adapter type: :sql, uri: ENV['DATABASE_URL']

  ##
  # Migrations
  #
  migrations 'db/migrations'
  schema     'db/schema.sql'

  ##
  # Database mapping
  #
  # Intended for specifying application wide mappings.
  #
  mapping do
    collection :agreements do
      entity     Agreement
      repository AgreementRepository
    
      attribute :id,       Integer
      attribute :url,      String
      attribute :http_method,   String, as: :method
      attribute :response, String
    end
  end
end.load!

Hanami::Mailer.configure do
  root "#{ __dir__ }/scup/mailers"

  # See http://hanamirb.org/guides/mailers/delivery
  delivery do
    development :test
    test        :test
    # production :smtp, address: ENV['SMTP_PORT'], port: 1025
  end
end.load!
