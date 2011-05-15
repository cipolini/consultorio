# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([#{ :name => 'Chicago' }, #{ :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

EstadoCivil.create([
{:descricao => 'Solteiro(a)'},
{:descricao => 'Casado(a)'},
{:descricao => 'Viuvo(a)'}
])

TipoSystemUser.create([
{:descricao => 'Adm'},
{:descricao => 'Medico'},
{:descricao => 'Secretaria'}
])

StatusSystemUser.create([
{:descricao => 'Ativo'},
{:descricao => 'Inativo'}
])

Convenio.create([
{:descricao => 'Porto Seguro'}
])

Plano.create([
{:descricao => 'BASICO EMPRESARIAL'}
])

SystemUser.create([
{:login => 'adm_cipolini', :password => 'T2m7*321', :email => 'andrecipolini@gmail.com', :status => 'Ativo', :tipo => '1'},
{:login => 'zebio', :password => '123', :email => 'medico@dr.com', :status => 'Ativo', :tipo => '3'},
{:login => 'medico', :password => '123', :email => 'medico@dr.com', :status => 'Ativo', :tipo => '2'}
])

TipoConsulta.create([
{:descricao => 'Avaliacao', :status => 'Ativo'},
{:descricao => 'Retorno', :status => 'Ativo'},
{:descricao => 'Exame', :status => 'Ativo'}
])

