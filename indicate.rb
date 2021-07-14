require 'cgi'
cgi = CGI.new

cgi.out("type" => "text/html", "charset" => "UTF-8") {

    get = cgi['input']
  #Return response in HTML
  "<html>
    <body>
      <p>ENtrer de input</p>
      <p>Texte: #{get}</p>
    </body>
  </html>"
}