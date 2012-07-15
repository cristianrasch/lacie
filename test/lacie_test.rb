# coding: utf-8

require File.expand_path("capybara_test_case", "test/support")

class LacieTest < CapybaraTestCase
  def test_home
    visit "/"
    
    assert_equal "/", current_path
    assert page.has_content?("Laboratorio Abierto de la Carrera de Ingeniería Electrónica")
    assert page.has_css?('ul.nav-list li.active')
    assert_equal "Home", page.find('ul.nav-list li.active').text
  end
  
  def test_visiting_an_invalid_page
    visit "/blah"
    
    assert_equal "/", current_path
    assert page.has_content?("Laboratorio Abierto de la Carrera de Ingeniería Electrónica")
  end
  
  def test_activities
    visit "/actividades"
    
    assert_equal "/actividades", current_path
    assert page.has_content?("Desde el año 2005 cuando fue creado, el LACIE colabora y organiza actividades y eventos")
    assert_equal "Actividades", page.find('ul.nav-list li.active').text
    refute page.has_css?('ul.nav-tabs li.active')
  end
  
  def test_activities_2012
    visit "/actividades/2012"
    
    assert_equal "/actividades/2012", current_path
    assert page.has_selector?("h1")
    assert page.has_content?("Actividades 2012")
    assert_equal "Actividades", page.find('ul.nav-list li.active').text
    assert page.has_css?('ul.nav-tabs li.active')
    assert_match /2012/, page.find('ul.nav-tabs li.active').text
  end
  
  def test_activities_2011
    visit "/actividades/2011"
    
    assert_equal "/actividades/2011", current_path
    assert page.has_selector?("h1")
    assert page.has_content?("Actividades 2011")
    assert_equal "Actividades", page.find('ul.nav-list li.active').text
    assert_match /2011/, page.find('ul.nav-tabs li.active').text
  end
  
  def test_activities_2010
    visit "/actividades/2010"
    
    assert_equal "/actividades/2010", current_path
    assert page.has_selector?("h1")
    assert page.has_content?("Actividades 2010")
    assert_equal "Actividades", page.find('ul.nav-list li.active').text
    assert_match /2010/, page.find('ul.nav-tabs li.active').text
  end
  
  def test_activities_2009
    visit "/actividades/2009"
    
    assert_equal "/actividades/2009", current_path
    assert page.has_selector?("h1")
    assert page.has_content?("Actividades 2009")
    assert_equal "Actividades", page.find('ul.nav-list li.active').text
    assert_match /2009/, page.find('ul.nav-tabs li.active').text
  end
  
  def test_activities_2008
    visit "/actividades/2008"
    
    assert_equal "/actividades/2008", current_path
    assert page.has_selector?("h1")
    assert page.has_content?("Actividades 2008")
    assert_equal "Actividades", page.find('ul.nav-list li.active').text
    assert_match /2008/, page.find('ul.nav-tabs li.active').text
  end
  
  def test_activities_2007
    visit "/actividades/2007"
    
    assert_equal "/actividades/2007", current_path
    assert page.has_selector?("h1")
    assert page.has_content?("Actividades 2007")
    assert_equal "Actividades", page.find('ul.nav-list li.active').text
    assert_match /2007/, page.find('ul.nav-tabs li.active').text
  end
  
  def test_activities_2005_2006
    visit "/actividades/2005-2006"
    
    assert_equal "/actividades/2005-2006", current_path
    assert page.has_selector?("h1")
    assert page.has_content?("Actividades 2005 y 2006")
    assert_equal "Actividades", page.find('ul.nav-list li.active').text
    assert_match /2005-2006/, page.find('ul.nav-tabs li.active').text
  end
  
  def test_staff
    visit "/integrantes"
    
    assert_equal "/integrantes", current_path
    assert page.has_selector?("h1")
    assert page.has_content?("Integrantes del LACIE")
    assert_equal "Integrantes", page.find('ul.nav-list li.active').text
  end
  
  def test_tools
    visit "/instrumental"
    
    assert_equal "/instrumental", current_path
    assert page.has_selector?("h1")
    assert page.has_content?("Instrumental")
    assert_equal "Instrumental", page.find('ul.nav-list li.active').text
    refute page.has_css?('ul.nav-tabs li.active')
  end
  
  def test_kits
    visit "/instrumental/kits-de-desarrollo"
    
    assert_equal "/instrumental/kits-de-desarrollo", current_path
    assert page.has_selector?("h1")
    assert page.has_content?("Kits de desarrollo")
    assert_equal "Instrumental", page.find('ul.nav-list li.active').text
    assert page.has_css?('ul.nav-tabs li.active')
    assert_match /kits/i, page.find('ul.nav-tabs li.active').text
  end
  
  def test_machines
    visit "/instrumental/maquinas-y-herramientas"
    
    assert_equal "/instrumental/maquinas-y-herramientas", current_path
    assert page.has_selector?("h1")
    assert page.has_content?("Máquinas y herramientas")
    assert_equal "Instrumental", page.find('ul.nav-list li.active').text
    assert page.has_css?('ul.nav-tabs li.active')
    assert_match /máquinas/i, page.find('ul.nav-tabs li.active').text
  end
  
  def test_publications
    visit "/publicaciones"
    
    assert_equal "/publicaciones", current_path
    assert page.has_selector?("h1")
    assert page.has_content?("Publicaciones")
    assert_equal "Publicaciones", page.find('ul.nav-list li.active').text
    assert page.has_css?('ul.nav-tabs li.active')
    assert_match /2011/, page.find('ul.nav-tabs li.active').text
  end
  
  def test_publications
    visit "/reglamento"
    
    assert_equal "/reglamento", current_path
    assert page.has_selector?("h1")
    assert page.has_content?("Reglamento")
    assert_equal "Reglamento", page.find('ul.nav-list li.active').text
  end
  
  def test_contact_us
    visit "/contacto"
    
    assert_equal "/contacto", current_path
    assert page.has_selector?("h1")
    assert page.has_content?("Contacto")
    assert_equal "Contacto", page.find('ul.nav-list li.active').text
  end
end