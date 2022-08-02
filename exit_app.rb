require_relative 'json_creation'

def exit_app(app)
  puts 'Thank you for using this app! Now exiting...'
  create_dir
  app.save_files
  exit
end
