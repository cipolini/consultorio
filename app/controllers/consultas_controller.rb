# encoding: UTF-8
class ConsultasController < ApplicationController
   before_filter :authenticate

  def retorno
#    @consulta_pre = Consulta.find(params[:id])
    @consulta = Consulta.new
#    @consulta.paciente_id = @consulta_pre.paciente_id

#    @paciente = Paciente.find(@consulta_pre.paciente_id)
  end

  def index
    @consultas = Consulta.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @consultas }
    end
  end

  # GET /consultas/1
  # GET /consultas/1.xml
  def show
#    @consulta = Consultum.find(params[:id])
    @fotos = Foto.find(:all)

    @primeira_consulta = Consulta.find(params[:id])

    @consulta = Consulta.paginate :page => params[:page], :conditions => ["paciente_id = ?" , @primeira_consulta.paciente_id ], :order => "id"
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @consulta }
    end
  end

  # GET /consultas/new
  # GET /consultas/new.xml
  def new
    @consulta = Consulta.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @consulta }
    end
  end

  # GET /consultas/1/edit
  def edit
    @consulta = Consulta.find(params[:id])
  end

  # POST /consultas
  # POST /consultas.xml
  def create
    @consulta = Consulta.new(params[:consulta])

    # Diferenciando consulta de retorno
    @jah_tem_consulta = Consulta.find(:first, :conditions => [ "paciente_id = ?", @consulta.paciente_id] )

    if @jah_tem_consulta
      @consulta.consulta_id = 1
    else
      @consulta.consulta_id = 0
    end

    respond_to do |format|
      if @consulta.save
        format.html { redirect_to(@consulta, :notice => 'Consulta was successfully created.') }
        format.xml  { render :xml => @consulta, :status => :created, :location => @consulta }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @consulta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /consultas/1
  # PUT /consultas/1.xml
  def update
    @consulta = Consulta.find(params[:id])

    respond_to do |format|
      if @consulta.update_attributes(params[:consulta])
        format.html { redirect_to(@consulta, :notice => 'Consulta was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @consulta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /consultas/1
  # DELETE /consultas/1.xml
  def destroy
    @consulta = Consulta.find(params[:id])
    @consulta.destroy

    respond_to do |format|
      format.html { redirect_to(consultas_url) }
      format.xml  { head :ok }
    end
  end
end
