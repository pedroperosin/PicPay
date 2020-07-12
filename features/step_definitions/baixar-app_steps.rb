
  Dado('clico em {string} na seção Para Você') do |dispositivo|
    @pp_baixe_o_app_page.para_voce(dispositivo)
  end
  
  Dado('clico em {string} na seção Para Empresas') do |dispositivo|
    @pp_baixe_o_app_page.para_empresas(dispositivo)
  end

  Então('devo ver o título {string} na Google Play') do |titulo|
    expect(@google_play_page.obter_titulo_GPlay()).to eql titulo
  end
  
  Então('devo ver o título {string} na App Store') do |titulo|
    expect(@app_store_page.obter_titulo_AppStore()).to have_text titulo
  end