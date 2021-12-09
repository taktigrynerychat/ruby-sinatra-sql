require 'sequel'
require 'sequel/extensions/seed'
require 'pg'
require 'json'
require 'multi_json'
require 'sinatra'

DB = Sequel.connect(
  adapter: :postgres,
  database: 'sinatra_seq_dev',
  host: 'localhost',
  password: 'password',
  user: 'sinatra_admin',
  max_connections: 10,
)

%w[controllers models routes].each { |dir| Dir.glob("./#{ dir }/*.rb").sort.each(&method(:require)) }

# %w[controllers models routes].each do | dir |
#   $LOAD_PATH << File.expand_path('.', File.join(File.dirname(__FILE__), dir))
#   require File.join(dir, 'init')
# end
#
