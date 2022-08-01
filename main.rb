require_relative './app'
require_relative './display_menu'

def main
  app = App.new
  loop do
    display_menu(app)
  end
end

main
