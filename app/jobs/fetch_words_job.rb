require 'rubygems'
require 'nokogiri'
require 'open-uri'

BASE_PALABRAS_URL = "http://www.listapalabras.com"
LIST_URL = "#{BASE_PALABRAS_URL}/palabras-con-A-lista-completa.php"

page = Nokogiri::HTML(open(LIST_URL))
rows = page.css('div#columna_resultados_generales a')

rows[1..-2].each do |row|

  #puts row

  puts row['href'].scan(/^http:\/\/lema\.rae\.es\/drae\/\?val=(.+)/).last

end # done: rows.each
