# require 'mongo'
# require 'time'
# require 'tzinfo'

# client = Mongo::Client.new(['localhost:27017'], :database => 'carrefour')
# features_collection = client[:features]
# timezone = TZInfo::Timezone.get('America/Sao_Paulo')

Before do
  @screen = lambda do |klass|
    klass.new
  end

  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10
end
After do |_scenario|
  binary_shot = driver.screenshot_as(:base64)

  temp_shot = 'logs/temp_shot.png'

  File.open(temp_shot, 'wb') do |f|
    f.write(Base64.decode64(binary_shot).force_encoding('UTF-8'))
  end

  Allure.add_attachment(
    name: 'screenshot',
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot)
  )

  attach(File.open(temp_shot), 'image/png')

  driver.quit
end
#   begin
#     driver.activate_app('br.com.carrefour')
#     p "Iniciado pelo activate_app"
#   rescue
#     begin
#       driver.start_driver
#       p "Iniciado pelo start_driver"
#     rescue
#       p "nao precisou abrir o driver ou deu erro na abertura"
#     end
#   end
#   p "Fim do Before......: #{Time.now}"
# end

# After do |scenario|
#   begin
#     driver.terminate_app('br.com.carrefour')
#   rescue
#     driver.driver_quit
#   end
#  tag = scenario.source_tag_names.detect { |t| t.match(/@CT\S+/) }
#  status = scenario.failed? ? 'failed' : 'passed'
#  puts "Tag #{tag} status #{status}"
#  client[:features].update_one({ 'name' => FEATURE_NAME },{ '$set' => { "scenarios.#{tag}" => status }})
# end

# at_exit do
#   begin
#     driver.driver_quit
#   rescue
#   end
#  begin
#    p "encerrando: #{FEATURE_NAME}"
#    feature = client[:features].find({ 'name' => FEATURE_NAME }).first
#    status = feature['scenarios'].values.any? { |s| s != 'Pending' } ? 'Running' : 'Pending'
#    client[:features].update_one({:name => FEATURE_NAME}, {"$set" => {:status => "Done", :end_time => Time.now.getlocal(timezone.current_period.utc_offset).strftime('%Y-%m-%d %H:%M:%S')}})
#  rescue
#  end
