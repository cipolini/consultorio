# encoding: UTF-8
module ApplicationHelper

  def formatacao_data_sem_horas(date)
    date.strftime("%d/%m/%Y")
  end

  def formatacao_data_com_horas(date)
    date.strftime("%d/%m/%Y %H:%m")
  end

end
