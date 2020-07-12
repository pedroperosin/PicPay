  
  Quando('eu visito a home page') do
    @pp_home_page.ir
  end

  Dado('que clico em {string}') do |pagina|
    @pp_home_page.ir_para(pagina)
  end

  Então('devo ver o {string} sendo exibido') do |titulo|
    expect(@pp_home_page).to have_content titulo
  end

  