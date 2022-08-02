require_relative './app'
require_relative './display_menu'

def main
  app = App.new
  Dir.exist?('./data') ? app.read_files : nil
  loop do
    display_menu(app)
  end
end

main
