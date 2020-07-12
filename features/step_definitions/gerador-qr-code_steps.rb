
  Dado('preencho o usuário {string} e clico em Baixar meu QR Code') do |usuario|
    @live_pp_qrcode_page.focar
    @live_pp_qrcode_page.gerar_QRCode(usuario)
  end

  Então('devo ver o usuário {string} abaixo do QR Code gerado') do |usuario|
    expect(@live_pp_qrcode_page.usuario_gerado).to eql usuario
  end