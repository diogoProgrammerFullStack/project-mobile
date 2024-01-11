# # smtp.login('carrefour.aut.and@gmail.com', 'ouotubersmmseofd')

# #!/usr/bin/env ruby 
# require 'net/smtp' 

# addressee = 'rodrigocandidocosta@gmail.com'
# server    = 'smtp.gmail.com'
# port      = 587
# account   = 'carrefour.aut.and@gmail.com'
# from      = 'Carrefour'
# acc_name  = 'carrefour.aut.and@gmail.com'
# domain    = 'gmail.com'
# subject   = "Envio de Report de Automação - #{Time.now}"
# body      = "Envio de Report de Automação - #{Time.now}"
# marker    = "PART_SEPARATOR"
# filename  = "features/reports/report_android.html"
# #filetext  = "teste.txt"

# filecontent = File.binread(filename)
# encodedcontent = [filecontent].pack("m") 

# #print "Enter password for #{account}: "
# password  = 'ouotubersmmseofd'

# # Encode contents into base64 format
# #encodedcontent = [filetext].pack("m")

# # Define the main headers.
# part1 = <<EOF
# From: <#{from}>
# To: <#{addressee}>
# Subject: #{subject}
# MIME-Version: 1.0
# Content-Type: multipart/mixed; boundary=#{marker}
# --#{marker}
# EOF

# # Define the message action
# part2 = <<EOF
# Content-Type: text/plain
# Content-Transfer-Encoding:8bit #{body}
# --#{marker}
# EOF

# # Define the attachment section
# part3 = <<EOF
# Content-Type: multipart/mixed; name="#{File.basename(filename)}"
# Content-Transfer-Encoding:base64
# Content-Disposition: attachment; filename="#{File.basename(filename)}"

# #{encodedcontent}
# --#{marker}--
# EOF

# message = part1 + part2 + part3

# #puts message

# smtp = Net::SMTP.new server, port
# smtp.enable_starttls

# mail_list = ['rodrigocandidocosta@gmail.com','rodrigo.costa@primecontrol.com.br','jorge.barbosa@primecontrol.com.br']
# #mail_list = ['rodrigocandidocosta@gmail.com']

# smtp.start(domain, account, password, :login) do
#   mail_list.each do | mail |
#     p mail
#     smtp.send_message message, from, mail
#   end
# end