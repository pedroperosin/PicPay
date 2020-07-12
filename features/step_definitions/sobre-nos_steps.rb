  
  Quando('eu visito a página sobre-nós') do
    @pp_sobre_nos_page.ir
  end

  Dado('que clico na seção {string}') do |secao|
    @pp_sobre_nos_page.ir_para_secao(secao)
  end

  Então('no primeiro item devo ver a imagem {string}') do |imagem|    
    @pp_sobre_nos_page.selecionar_card_sobre(1)
    expect(@pp_sobre_nos_page.validar_imagem(1)).to have_text imagem
  end

  Então('ao clicar no segundo item, devo ver a imagem {string}') do |imagem|    
    @pp_sobre_nos_page.selecionar_card_sobre(2)
    expect(@pp_sobre_nos_page.validar_imagem(2)).to have_text imagem
  end                                                                           
                                                                                
  Então('ao clicar no terceiro item, devo ver a imagem {string}') do |imagem|   
    @pp_sobre_nos_page.selecionar_card_sobre(3)
    expect(@pp_sobre_nos_page.validar_imagem(3)).to have_text imagem
  end                                                                           

  Então('devo ver a frase {string} exibida no slider') do |frase|
    expect(@pp_sobre_nos_page.validar_imprensa).to have_text frase
  end

  Então('devo clicar na seta para ver a próxima frase') do
    @pp_sobre_nos_page.proxima_frase_imprensa
  end

  Então('devo ver a frase {string} no titulo da seção contato') do |titulo|    
    expect(@pp_sobre_nos_page.validar_titulo_contato).to have_text titulo
  end                                                                          

  Então('o botão {string} deve estar visualmente selecionado') do |secao|
    expect(@pp_sobre_nos_page.verificar_status_secao(secao)).to eq("active")
  end

  Então('devo preencher o formulário com os dados em {string}') do |contato|
    #ler os dados do yaml
    file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/contato.yaml"))
    @dados_contato = file[contato]
    @pp_sobre_nos_page.preencher_form(@dados_contato)
  end

  Então('não devo enviar, pois é apenas um exemplo') do
    # Não fazer nada
    # @pp_sobre_nos_page.enviar_form
  end

  Então('devo clicar em Enviar') do
    @pp_sobre_nos_page.enviar_form    
  end
  
  Então('devo ver as mensagens de erro {string} e {string}') do |msg1,msg2|
    expect(@pp_sobre_nos_page.validar_msg_erro).to have_text msg1
    expect(@pp_sobre_nos_page.validar_msg_erro).to have_text msg2
  end