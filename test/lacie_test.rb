# coding: utf-8

require File.expand_path("capybara_test_case", "test/support")

class LacieTest < CapybaraTestCase
  def test_home
    visit "/"
    
    assert_equal "/", current_path
    assert page.has_content?("Laboratorio Abierto de la Carrera de Ingeniería Electrónica")
  end
  
  def test_visiting_an_invalid_page
    visit "/blah"
    
    assert_equal "/", current_path
    assert page.has_content?("Laboratorio Abierto de la Carrera de Ingeniería Electrónica")
  end
end