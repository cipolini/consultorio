class TipoConsultasController < ApplicationController
  before_filter :authenticate_administrador

  # GET /tipo_consultas
  # GET /tipo_consultas.xml
  def index
    @tipo_consultas = TipoConsulta.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipo_consultas }
    end
  end

  # GET /tipo_consultas/1
  # GET /tipo_consultas/1.xml
  def show
    @tipo_consulta = TipoConsulta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipo_consulta }
    end
  end

  # GET /tipo_consultas/new
  # GET /tipo_consultas/new.xml
  def new
    @tipo_consulta = TipoConsulta.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipo_consulta }
    end
  end

  # GET /tipo_consultas/1/edit
  def edit
    @tipo_consulta = TipoConsulta.find(params[:id])
  end

  # POST /tipo_consultas
  # POST /tipo_consultas.xml
  def create
    @tipo_consulta = TipoConsulta.new(params[:tipo_consulta])

    respond_to do |format|
      if @tipo_consulta.save
        format.html { redirect_to(@tipo_consulta, :notice => 'Tipo consulta was successfully created.') }
        format.xml  { render :xml => @tipo_consulta, :status => :created, :location => @tipo_consulta }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipo_consulta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_consultas/1
  # PUT /tipo_consultas/1.xml
  def update
    @tipo_consulta = TipoConsulta.find(params[:id])

    respond_to do |format|
      if @tipo_consulta.update_attributes(params[:tipo_consulta])
        format.html { redirect_to(@tipo_consulta, :notice => 'Tipo consulta was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipo_consulta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_consultas/1
  # DELETE /tipo_consultas/1.xml
  def destroy
    @tipo_consulta = TipoConsulta.find(params[:id])
    @tipo_consulta.destroy

    respond_to do |format|
      format.html { redirect_to(tipo_consultas_url) }
      format.xml  { head :ok }
    end
  end
end
