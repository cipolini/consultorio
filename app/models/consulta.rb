# encoding: UTF-8
class Consulta < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 1
  
  
end
