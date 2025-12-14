# frozen_string_literal: true

# Import Gosu Gem to our project
require 'gosu'

# starts declaring a class when we'll to start manipulate the window
# that making a heritage with the Gosu's library Window
class Window < Gosu::Window
  # initialize the object Window with the window's dimension
  def initialize
    super 400,600 # that's super manipulates the datas of the parent object, in this case we'll to manipulate the window's size
    self.caption = "My First Window" # and finally with caption we'll to define a title
                                    # for the window (it's self because we need to acces at the parent object parameter)

    # define the label
    @label = Gosu::Font.new(20)
    @label_text = "HOLA, SOY UNA ETIQUETA EN GOSU!"
  end

  # start making a drawing method
  def draw
    # draw a rect on the window, the parameters that we have inside is corresponsive to the next data
    # x := shape's left-top corner on horizontal POSITION*
    # y := shape's left-top corner on vertical POSITION*
    # width := shape's width SIZE*
    # height := shape's height SIZE*
    # color := shape's color *
    # z := shape's level to the screen
    # mode := shape's mode, for this moment we not be to explain that
    # THE ORDER OF THE EXPLAINS IS IN THE TRUE ORDER OF THE METHOD, WE'LL TO START
    # MAKING THE SHAPES PASS FOR PASS
    Gosu.draw_rect(60, 60, 100, 100, Gosu::Color::RED)

    # draw label
    @label.draw_text(@label_text,10,20,0,1,1,Gosu::Color::WHITE)
  end
end

Window.new.show