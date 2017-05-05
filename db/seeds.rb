# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Dom.create([
{  "id": 1, "nome_dom": "Organização"  },
{  "id": 2, "nome_dom": "Missionário"  },
{  "id": 3, "nome_dom": "Celibato"  },
{  "id": 4, "nome_dom": "Discernimento"  },
{  "id": 5, "nome_dom": "Evangelismo"  },
{  "id": 6, "nome_dom": "Aconselhamento"  },
{  "id": 7, "nome_dom": "Fé"  },
{  "id": 8, "nome_dom": "Generosidade"  },
{  "id": 9, "nome_dom": "Libertação"  },
{  "id": 10, "nome_dom": "Cura"  },
{  "id": 11, "nome_dom": "Ensino"  },
{  "id": 12, "nome_dom": "Linguas"  },
{  "id": 13, "nome_dom": "Sabedoria"  },
{  "id": 14, "nome_dom": "Pobreza Voluntária"  },
{  "id": 15, "nome_dom": "Habilidade Manual"  },
{  "id": 16, "nome_dom": "Ajuda"  },
{  "id": 17, "nome_dom": "Hospitalidade"  },
{  "id": 18, "nome_dom": "Oração"  },
{  "id": 19, "nome_dom": "Interpretação"  },
{  "id": 20, "nome_dom": "Conhecimento"  },
{  "id": 21, "nome_dom": "Liderança"  },
{  "id": 22, "nome_dom": "Sofrimento"  },
{  "id": 23, "nome_dom": "Misericórdia"  },
{  "id": 24, "nome_dom": "Milagres"  },
{  "id": 25, "nome_dom": "Apóstolo"  },
{  "id": 26, "nome_dom": "Pastoral"  },
{  "id": 27, "nome_dom": "Profecia"  },
{  "id": 28, "nome_dom": "Serviço"  },
{  "id": 29, "nome_dom": "Música"  },
{  "id": 30, "nome_dom": "Criatividade Artística"  }
])

Grupo.create( [
{ "id": 1, "titulo_grupo": "Sinto-me realizado (a) ao" },
{ "id": 2, "titulo_grupo": "Tenho de me envolver, mais do que fiz até agora, em" },
{ "id": 3, "titulo_grupo": "Tive a experiência de" },
{ "id": 4, "titulo_grupo": "As afirmações a seguir correspondem" },
{ "id": 5, "titulo_grupo": "Para mim" },
{ "id": 6, "titulo_grupo": "Eu estaria disposto a" },
{ "id": 7, "titulo_grupo": "Em relação ao aluno posso imaginar" }
]
)


Pergunta.create(
[
{ "grupo_id": 1, "id": 1, "titulo_pergunta": "desenvolver planos detalhados para alcançar objetivos definidos." },
{ "grupo_id": 1, "id": 2, "titulo_pergunta": "me adaptar aos estilos de vida e costumes de pessoas e culturas." },
{ "grupo_id": 1, "id": 3, "titulo_pergunta": "viver sem cônjuge ou parentes. (Se você é casado assinale Nem um pouco)" },
{ "grupo_id": 1, "id": 4, "titulo_pergunta": "analisar afirmações de outros cristãos para ver se tendem a levar a igreja de Jesus para desvios." },
{ "grupo_id": 1, "id": 5, "titulo_pergunta": "falar de Jesus e de meu relacionamento com ele para não cristãos" },
{ "grupo_id": 1, "id": 6, "titulo_pergunta": "encorajar outras pessoas" },
{ "grupo_id": 1, "id": 7, "titulo_pergunta": "formular objetivos que parecem irreais para outras pessoas, e depois trabalhar de forma decidida para alcançá-los" },
{ "grupo_id": 1, "id": 8, "titulo_pergunta": "colocar, de forma generosa, o meu dinheiro e as minhas posses à disposição do Reino de Deus." },
{ "grupo_id": 1, "id": 9, "titulo_pergunta": "ajudar para que as pessoas sejam libertas de opressões demoníacas." },
{ "grupo_id": 1, "id": 10, "titulo_pergunta": "orar regularmente pela cura de doentes." },
{ "grupo_id": 1, "id": 11, "titulo_pergunta": "colaborar na elaboração de materiais que tornem simples e interessante o aprendizado das pessoas." },
{ "grupo_id": 1, "id": 12, "titulo_pergunta": "orar em línguas." },
{ "grupo_id": 1, "id": 13, "titulo_pergunta": "ajudar pessoas na reflexão sobre a sua situação." },
{ "grupo_id": 1, "id": 14, "titulo_pergunta": "adaptar-me a um ível de vida bem humilde." },
{ "grupo_id": 1, "id": 15, "titulo_pergunta": "trabalhar no conserto e manutenção de coisas." },
{ "grupo_id": 1, "id": 16, "titulo_pergunta": "trabalhar nos bastidores, em surdina, para apoiar as pessoas que estão realizando um ministério público." },
{ "grupo_id": 1, "id": 17, "titulo_pergunta": "receber visitas mesmo quando chegam de surpresa, preparar comida e oferecer uma boa acolhida para eles." },
{ "grupo_id": 1, "id": 18, "titulo_pergunta": "orar por uma hora ou mais." },
{ "grupo_id": 1, "id": 19, "titulo_pergunta": "tentar entender a oração em línguas de uma outra pessoa para perceber o que Deus quer no dizer através dela." },
{ "grupo_id": 1, "id": 20, "titulo_pergunta": "gastar muito tempo no estudo de livros procurando adquirir novos lançamentos." },
{ "grupo_id": 1, "id": 21, "titulo_pergunta": "liderar pessoas de tal forma que se engajem em um projeto que conduza a um objetivo comum." },
{ "grupo_id": 1, "id": 22, "titulo_pergunta": "mostrar uma atitude positiva em meio ao sofrimento." },
{ "grupo_id": 1, "id": 23, "titulo_pergunta": "preocupar-me com pessoas que estão à margem da sociedade." },
{ "grupo_id": 1, "id": 24, "titulo_pergunta": "orar por coisas que vão contra as leis da natureza." },
{ "grupo_id": 1, "id": 25, "titulo_pergunta": "engajar-me de tal forma nos problemas de outras igrejas procurando contribuir para se encontrar soluções." },
{ "grupo_id": 1, "id": 26, "titulo_pergunta": "preocupar-me com o bem espiritual de outros cristãos e acompanhá-los por um longo tempo." },
{ "grupo_id": 1, "id": 27, "titulo_pergunta": "servir de canal por meio da qual Deus dá orientações claras em uma determinada situação." },
{ "grupo_id": 1, "id": 28, "titulo_pergunta": "aceitar serviços pequenos e aparentemente insignificantes na igreja." },
{ "grupo_id": 1, "id": 29, "titulo_pergunta": "dar tudo de mim para desenvolver as minhas habilidades musicais." },
{ "grupo_id": 1, "id": 30, "titulo_pergunta": "expressar as minhas idéias e concepções por meio da arte (teatro, desenho, pantomina, etc)." },
{ "grupo_id": 2, "id": 31, "titulo_pergunta": "planejar projetos para a igreja, organizá-los e achar as pessoas para a sua implementação." },
{ "grupo_id": 2, "id": 32, "titulo_pergunta": "manter contatos com pessoas de outras culturas" },
{ "grupo_id": 2, "id": 33, "titulo_pergunta": "pensar se é a vontade de Deus que eu permaneça solteiro (a). (Se você é casado (a) assinale a coluna da direita)." },
{ "grupo_id": 2, "id": 34, "titulo_pergunta": "analisar as palavras de outros cristãos para verificar se estão em concordância com a Bíblia." },
{ "grupo_id": 2, "id": 35, "titulo_pergunta": "conversar sobre a fé em Jesus Cristo com outras pessoas." },
{ "grupo_id": 2, "id": 36, "titulo_pergunta": "acompanhar de perto pessoas nas suas necessidades." },
{ "grupo_id": 2, "id": 37, "titulo_pergunta": "contribuir para que \"pessoas com visão\" deem o tom das coisas da igreja." },
{ "grupo_id": 2, "id": 38, "titulo_pergunta": "entrar em contato com as pessoas e projetos que dependam da minha ajuda financeira." },
{ "grupo_id": 2, "id": 39, "titulo_pergunta": "ser usado por Deus na batalha contra poderes demoníacos." },
{ "grupo_id": 2, "id": 40, "titulo_pergunta": "servir como instrumento por meio do qual Deus dá cura sobrenatural." },
{ "grupo_id": 2, "id": 41, "titulo_pergunta": "gastar tempo em ensinar conhecimento e aptidões a outras pessoas." },
{ "grupo_id": 2, "id": 42, "titulo_pergunta": "romper a barreira do racional na comunhão com Deus e adorá-lo por meio de novas línguas." },
{ "grupo_id": 2, "id": 43, "titulo_pergunta": "ajudar pessoas ou organizações a encontrar formas mais eficientes para alcançar os seus objetivos." },
{ "grupo_id": 2, "id": 44, "titulo_pergunta": "reduzir consideravelmente o meu padrão de vida." },
{ "grupo_id": 2, "id": 45, "titulo_pergunta": "fazer algo bem prático para Deus com as minhas mãos." },
{ "grupo_id": 2, "id": 46, "titulo_pergunta": "apoiar outros cristãos colocando os meus dons a serviço dos seus ministérios." },
{ "grupo_id": 2, "id": 47, "titulo_pergunta": "oferecer a pessoas estranhas um ambiente agradável na minha casa." },
{ "grupo_id": 2, "id": 48, "titulo_pergunta": "dedicar muito tempo à oração." },
{ "grupo_id": 2, "id": 49, "titulo_pergunta": "ser usado para interpretar a oração em línguas de outro cristão para uma língua entendida por todos." },
{ "grupo_id": 2, "id": 50, "titulo_pergunta": "juntar e avaliar ideia e sugestões que são importantes para o corpo de Cristo." },
{ "grupo_id": 2, "id": 51, "titulo_pergunta": "ser chamado para tarefas de liderança." },
{ "grupo_id": 2, "id": 52, "titulo_pergunta": "colocar-me á disposição em situações em que a fé dependa de sacrifícios pessoais." },
{ "grupo_id": 2, "id": 53, "titulo_pergunta": "ter contato com pessoas que foram negligenciadas ou abandonadas pela sociedade." },
{ "grupo_id": 2, "id": 54, "titulo_pergunta": "ter a experiência de ser usado por Deus para a realização de milagres e maravilhas." },
{ "grupo_id": 2, "id": 55, "titulo_pergunta": "trabalhar na fundação de novas igrejas contribuindo para a salvação de pessoas que, de outra forma, não seriam alcançadas." },
{ "grupo_id": 2, "id": 56, "titulo_pergunta": "acompanhar cristãos para ajudá-los no seu crescimento espiritual." },
{ "grupo_id": 2, "id": 57, "titulo_pergunta": "esclarecer a outros cristãos qual é a vontade de Deus em uma determinada situação." },
{ "grupo_id": 2, "id": 58, "titulo_pergunta": "ser chamado (a) quando há necessidade de serem realizadas tarefas bem prtáticas na Igreja." },
{ "grupo_id": 2, "id": 59, "titulo_pergunta": "servir a Deus com a música." },
{ "grupo_id": 2, "id": 60, "titulo_pergunta": "expressar as minhas ideias de forma criativa e artística (dança, teatro, cerâmica etc.)." },
{ "grupo_id": 3, "id": 61, "titulo_pergunta": "desenvolver planos que contribuíram para que o trabalho na Igreja fosse feito de uma forma mais eficaz." },
{ "grupo_id": 3, "id": 62, "titulo_pergunta": "perceber que as pessoas de outas culturas se sentiram atraídas por mim." },
{ "grupo_id": 3, "id": 63, "titulo_pergunta": "perceber que como solteiro (a) tenho mais energias para trabalhar para Deus. (Se você é casado (a) assinale a coluna da direita)." },
{ "grupo_id": 3, "id": 64, "titulo_pergunta": "reconhecer falsos motivos por trás de palavras aparentemente muito espirituais de outras pessoas." },
{ "grupo_id": 3, "id": 65, "titulo_pergunta": "perceber que Deus me usou para levar pessoas a Jesus." },
{ "grupo_id": 3, "id": 66, "titulo_pergunta": "notar que outras pessoas receberam conforto por meio da minha ajuda." },
{ "grupo_id": 3, "id": 67, "titulo_pergunta": "ver que outros me consideram um \"sonhador\" porque insisto em investir a minha vida em objetivos considerados \"utópicos\"." },
{ "grupo_id": 3, "id": 68, "titulo_pergunta": "ajudar outras pessoas por meio de uma oferta considerável do meu dinheiro." },
{ "grupo_id": 3, "id": 69, "titulo_pergunta": "ver pessoas sendo libertas de opressões demoníacas por meio das minhas orações." },
{ "grupo_id": 3, "id": 70, "titulo_pergunta": "ver como Deus curou por meio das minhas orações pessoas que estavam física ou emocionalmente doentes." },
{ "grupo_id": 3, "id": 71, "titulo_pergunta": "ter a confirmação de outros de que consegui passar-lhes o meu conhecimento de uma forma melhor que a maioria das pessoas." },
{ "grupo_id": 3, "id": 72, "titulo_pergunta": "orar a Deus em uma língua que me era desconhecida." },
{ "grupo_id": 3, "id": 73, "titulo_pergunta": "pessoas me pedirem ajuda em um problema complicado e eu ter ajudado para a solução." },
{ "grupo_id": 3, "id": 74, "titulo_pergunta": "ter acesso mais fácil a pessoas pobres porque levo um estilo de vida mais simples." },
{ "grupo_id": 3, "id": 75, "titulo_pergunta": "poder ajudar pessoas com a habilidade das minhas mãos." },
{ "grupo_id": 3, "id": 76, "titulo_pergunta": "ver pessoas em posição de liderança fazerem melhor o seu trabalho porque realizei trabalhos que eram tarefa delas." },
{ "grupo_id": 3, "id": 77, "titulo_pergunta": "notar que as pessoa se ncontram com mais frequência na minha casa por se sentirem melhor aqui do que em outros lugares." },
{ "grupo_id": 3, "id": 78, "titulo_pergunta": "notar a intervenção concreta de Deus quando orei especificamente por algum motivo." },
{ "grupo_id": 3, "id": 79, "titulo_pergunta": "ver que a minha interpretação das linguas foi coerente." },
{ "grupo_id": 3, "id": 80, "titulo_pergunta": "ser o primeiro a dar sugestões que mais tarde foram muito úteis." },
{ "grupo_id": 3, "id": 81, "titulo_pergunta": "poder incentivar outros cristãos na realização de determinados objetivos." },
{ "grupo_id": 3, "id": 82, "titulo_pergunta": "ver como outras pessoas foram fortalecidas por meio do meu sofrimento." },
{ "grupo_id": 3, "id": 83, "titulo_pergunta": "ajudar pessoas que estavam em necessidade." },
{ "grupo_id": 3, "id": 84, "titulo_pergunta": "ser usado por Deus como instrumento para realizar sinais e milagres." },
{ "grupo_id": 3, "id": 85, "titulo_pergunta": "ver líderes de outras igrejas aceitando e colocando em prática as minhas sugestões." },
{ "grupo_id": 3, "id": 86, "titulo_pergunta": "ajudar cristãos a crescer na fé por meio do meu acompanhamento pessoal e demorado." },
{ "grupo_id": 3, "id": 87, "titulo_pergunta": "receber a confirmação de cristãos de que a palavra que lhes dei foi uma mensagem de Deus." },
{ "grupo_id": 3, "id": 88, "titulo_pergunta": "perceber antes de outras pessoas e realizar as tarefas na Igreja." },
{ "grupo_id": 3, "id": 89, "titulo_pergunta": "ver as pessoas ouvindo atentamente quando usei as minhas habilidades musicais." },
{ "grupo_id": 3, "id": 90, "titulo_pergunta": "usar para a glória de Deus as minhas habilidades criativas (escrever, desenhar, teatro etc.)." },
{ "grupo_id": 4, "id": 91, "titulo_pergunta": "Planejo o meu dia e deixo pouca coisa acontecer por acaso." },
{ "grupo_id": 4, "id": 92, "titulo_pergunta": "Tenho prazer em aprender de outras culturas." },
{ "grupo_id": 4, "id": 93, "titulo_pergunta": "Eu me identifico perfeitamente com as palavras de Paulo, quando ele diz que outros deveriam permanecer solteiros como ele." },
{ "grupo_id": 4, "id": 94, "titulo_pergunta": "Fico profundamente perturbado quando alguém diz algo correto, mas com motivações erradas." },
{ "grupo_id": 4, "id": 95, "titulo_pergunta": "Considero um grande problema o fato de muitos cristãos não falarem da sua fé em Jesus." },
{ "grupo_id": 4, "id": 96, "titulo_pergunta": "Quando pessoa me contam os seus problemas, consigo sentir melhor as suas dificuldades do que outras pessoas." },
{ "grupo_id": 4, "id": 97, "titulo_pergunta": "Para mim não há dúvidas de que Deus cumpre as suas promessas, mesmo quando as evidências dizem o contrário." },
{ "grupo_id": 4, "id": 98, "titulo_pergunta": "sinto-me tocado quando ouço sobre necessidade financeiras de outras pessoas." },
{ "grupo_id": 4, "id": 99, "titulo_pergunta": "Perturba-me a constatação de que muitas pessoas agem como se não existissem demônios." },
{ "grupo_id": 4, "id": 100, "titulo_pergunta": "Fico mais incomodade que outros cristãos com o fato de que se ora tão pouco pelos doentes em muitas igrejas." },
{ "grupo_id": 4, "id": 101, "titulo_pergunta": "Sofro com o fato de que tão poucos cristãos conseguem passar os seus conhecimentos de forma ilustrativa, interessante e eficiente." },
{ "grupo_id": 4, "id": 102, "titulo_pergunta": "Sinto-me bem em grupos nos quais se ora em línguas." },
{ "grupo_id": 4, "id": 103, "titulo_pergunta": "Tenho prazer em ajudar pessoas a encontrar soluções para os seus problemas." },
{ "grupo_id": 4, "id": 104, "titulo_pergunta": "Fico perturbado pelo padrão de vida tão elevado de muitos cristãos." },
{ "grupo_id": 4, "id": 105, "titulo_pergunta": "Não consigo ver construções, aparelhos, roupa etc., em mau estado de conservação." },
{ "grupo_id": 4, "id": 106, "titulo_pergunta": "Fico satisfeito realizando tarefas que para os outros não são agradáveis." },
{ "grupo_id": 4, "id": 107, "titulo_pergunta": "Tenho alegria em receber visitas inesperadas mesmo quando a minha casa e o meu quarto não estão bem arrumados." },
{ "grupo_id": 4, "id": 108, "titulo_pergunta": "Levo os pedidos de oração de outras pessoas muito a sério e oro por eles regularmente." },
{ "grupo_id": 4, "id": 109, "titulo_pergunta": "Quando alguém fala em línguas, oro para que Deus me dê a interpretação." },
{ "grupo_id": 4, "id": 110, "titulo_pergunta": "Ocupo-me constantemente com verdades bíblicas e com o seu significado para o dia-a-dia." },
{ "grupo_id": 4, "id": 111, "titulo_pergunta": "Em um grupo sem líder eu tomo a iniciativa." },
{ "grupo_id": 4, "id": 112, "titulo_pergunta": "Realatos de mártires cristãos me fascinam." },
{ "grupo_id": 4, "id": 113, "titulo_pergunta": "Quando vejo uma necessidade quero ajudar imediatamente." },
{ "grupo_id": 4, "id": 114, "titulo_pergunta": "Oro para que Deus faça sinais e milagres por meu intermédio como acontecia na época da Igreja Primitiva." },
{ "grupo_id": 4, "id": 115, "titulo_pergunta": "Sinto mais do que outros cristãos a necessidade de promover unidade entre as diferentes igrejas." },
{ "grupo_id": 4, "id": 116, "titulo_pergunta": "Estou perturbado com o fato de que muitos cristãos recebem um acompanhamento tão precário na sua vida pessoal e espiritual." },
{ "grupo_id": 4, "id": 117, "titulo_pergunta": "oro para que Deus me dê mensagens para outros cristãos com mais regularidade do que aconteceu até agora." },
{ "grupo_id": 4, "id": 118, "titulo_pergunta": "Noto quando outras pessoas estão precisando de ajuda prática e estou disposto a prestá-las." },
{ "grupo_id": 4, "id": 119, "titulo_pergunta": "Entristeço-me quando na igreja se dá pouco valor para a qualidade da música." },
{ "grupo_id": 4, "id": 120, "titulo_pergunta": "Considero importante para os cristãos se engajarem na preservação e no embelezamento do meio-ambiente em que vivem." },
{ "grupo_id": 5, "id": 121, "titulo_pergunta": "desenvolver, por conta própria, projetos que envolvam negociações e organização." },
{ "grupo_id": 5, "id": 122, "titulo_pergunta": "fazer contato com pessoas que têm um estilo de vida totalmente diferente do meu." },
{ "grupo_id": 5, "id": 123, "titulo_pergunta": "abrir mão de construir família. (se você é casado (a) assinale a coluna da direita)." },
{ "grupo_id": 5, "id": 124, "titulo_pergunta": "discernir se as palavras de uma pessoa são de origem divina, humana ou satânica." },
{ "grupo_id": 5, "id": 125, "titulo_pergunta": "perceber o momento em que uma pessoa está preparada para aceitar o evangelho." },
{ "grupo_id": 5, "id": 126, "titulo_pergunta": "aprofundar, em pouco tempo, uma conversa com pessoas que eu não conhecia antes." },
{ "grupo_id": 5, "id": 127, "titulo_pergunta": "orar e trabalhar por coisas que outros cristãos consideram impossíveis." },
{ "grupo_id": 5, "id": 128, "titulo_pergunta": "dar regularmente parte do meu dinheiro para o Reino de Deus." },
{ "grupo_id": 5, "id": 129, "titulo_pergunta": "perceber se há áreas na vida de uma pessoa estão sob domínio demoníaco." },
{ "grupo_id": 5, "id": 130, "titulo_pergunta": "orar pessoal e concretamente pela cura de doentes." },
{ "grupo_id": 5, "id": 131, "titulo_pergunta": "transmitir verdades e conceitos de forma lógica, interessante e compreensível para os ouvintes." },
{ "grupo_id": 5, "id": 132, "titulo_pergunta": "transmitir uma mensagem de Deus (ou uma oração) a outros cristãos em forma de oração em línguas." },
{ "grupo_id": 5, "id": 133, "titulo_pergunta": "aplicar conhecimento teórico a uma situação concreta." },
{ "grupo_id": 5, "id": 134, "titulo_pergunta": "viver com um padrão de vida simples." },
{ "grupo_id": 5, "id": 135, "titulo_pergunta": "resolver problemas práticos que normalmente necessitariam do trabalho de um técnico especializado." },
{ "grupo_id": 5, "id": 136, "titulo_pergunta": "ajudar outros cristãos na sua tarefa para que possam fazer melhor o seu trabalho." },
{ "grupo_id": 5, "id": 137, "titulo_pergunta": "transmitir a visitas desconhecidas a sensação de estarem em casa." },
{ "grupo_id": 5, "id": 138, "titulo_pergunta": "orar semans ou meses seguidos por motivos bem definidos." },
{ "grupo_id": 5, "id": 139, "titulo_pergunta": "sentir o que Deus quer dizer quando ouço uma mensagem em línguas." },
{ "grupo_id": 5, "id": 140, "titulo_pergunta": "descobrir, formular e sistematizar fatos que são importantes para a saúde da Igreja." },
{ "grupo_id": 5, "id": 141, "titulo_pergunta": "delegar tarefas a outras pessoas." },
{ "grupo_id": 5, "id": 142, "titulo_pergunta": "dispor-me a sofrer por Jesus." },
{ "grupo_id": 5, "id": 143, "titulo_pergunta": "expressar a pessoas em necessidades o quanto sofro com elas." },
{ "grupo_id": 5, "id": 144, "titulo_pergunta": "orar por sinais sobrenaturais e milagres." },
{ "grupo_id": 5, "id": 145, "titulo_pergunta": "aconselhar grupos e igrejas acerca da sua situação espiritual." },
{ "grupo_id": 5, "id": 146, "titulo_pergunta": "acompanhar pessoalmente um grupo de cristãos e me empenhar pela sua unidade." },
{ "grupo_id": 5, "id": 147, "titulo_pergunta": "receber orientações de Deus sobre qual é a sua vontade em uma determinada situação." },
{ "grupo_id": 5, "id": 148, "titulo_pergunta": "aceitar tarefas que não são muito atraentes para outros." },
{ "grupo_id": 5, "id": 149, "titulo_pergunta": "aprender a tocar um instrumento musical." },
{ "grupo_id": 5, "id": 150, "titulo_pergunta": "colocar em prática formas criativas de comunicação (pintura, teatro, pantomima etc.)." },
{ "grupo_id": 6, "id": 151, "titulo_pergunta": "participar de treinamento que me ajude a melhorar minhas habilidades de planejamento, organização e delegação de tarefas." },
{ "grupo_id": 6, "id": 152, "titulo_pergunta": "trabalhar em outro país ou cultura, se tivesse a oportunidade." },
{ "grupo_id": 6, "id": 153, "titulo_pergunta": "permanecer solteiro para melhor trabalhar para o Reino de Deus. (Se você é casado (a) assinale a coluna da direita)." },
{ "grupo_id": 6, "id": 154, "titulo_pergunta": "investir muito tempo advertindo pessoas de possíveis perigos." },
{ "grupo_id": 6, "id": 155, "titulo_pergunta": "participar de um treinamento em que se aprende a levar pessoas a Jesus." },
{ "grupo_id": 6, "id": 156, "titulo_pergunta": "aprender mais sobre como ajudar pessoas por meio de aconselhamento espiritual." },
{ "grupo_id": 6, "id": 157, "titulo_pergunta": "aceitar um desafio mesmo que implicasse um alto risco." },
{ "grupo_id": 6, "id": 158, "titulo_pergunta": "apoiar regularmente com o meu dinheiro cristãos que estão realizando um trabalho digno." },
{ "grupo_id": 6, "id": 159, "titulo_pergunta": "colocar-me à disposição para a batalha espiritual contra demônios." },
{ "grupo_id": 6, "id": 160, "titulo_pergunta": "participar de um ministério de oração pelos doentes." },
{ "grupo_id": 6, "id": 161, "titulo_pergunta": "ler mais sobre comunicação para desenvolver minha capacidade de ensino." },
{ "grupo_id": 6, "id": 162, "titulo_pergunta": "orar publicamente em línguas se Deus me der esse dom." },
{ "grupo_id": 6, "id": 163, "titulo_pergunta": "investir muito tempo aconselhando pessoas ou grupos para a tomada de decisões importantes." },
{ "grupo_id": 6, "id": 164, "titulo_pergunta": "abrir mão de boa comida, casa confortável e roupas caras." },
{ "grupo_id": 6, "id": 165, "titulo_pergunta": "ajudar no conserto e manutenção de aparelhos ou dependências, se necessário." },
{ "grupo_id": 6, "id": 166, "titulo_pergunta": "aliviar a carga de irmãos que estão sobrecarregados com muitas atividades, fazendo tarefas que eles deveriam fazer." },
{ "grupo_id": 6, "id": 167, "titulo_pergunta": "compartilhar mais a minha casa com visitantes do que fiz até agora." },
{ "grupo_id": 6, "id": 168, "titulo_pergunta": "participar de um grupo que tem o ministério de oração por outras pessoas." },
{ "grupo_id": 6, "id": 169, "titulo_pergunta": "interpretar publicamente a oração em línguas de outra pessoa se Deus me der a interpretação." },
{ "grupo_id": 6, "id": 170, "titulo_pergunta": "investir muito tempo no desenvolvimento de novas ideias que contribuam para o progresso da Igreja de Jesus." },
{ "grupo_id": 6, "id": 171, "titulo_pergunta": "colocar-me à disposição para liderar um grupo grande de cristãos." },
{ "grupo_id": 6, "id": 172, "titulo_pergunta": "arriscar a aminha vida, se isso for necessário, para o Reino de Deus." },
{ "grupo_id": 6, "id": 173, "titulo_pergunta": "participar do ministério na Igreja que se dedica especialmente aos abandonados pela sociedade." },
{ "grupo_id": 6, "id": 174, "titulo_pergunta": "concentrar a minha oração em casos considerados humanamente perdidos." },
{ "grupo_id": 6, "id": 175, "titulo_pergunta": "intermediar situações de conflito entre igrejas." },
{ "grupo_id": 6, "id": 176, "titulo_pergunta": "assumir a responsabilidade por um grupo de cristãos." },
{ "grupo_id": 6, "id": 177, "titulo_pergunta": "transmitir mensagens, mesmo desagradáveis, a irmãos da igreja." },
{ "grupo_id": 6, "id": 178, "titulo_pergunta": "investir o meu tempo com tarefas na igreja que são as mais urgentes." },
{ "grupo_id": 6, "id": 179, "titulo_pergunta": "participar de um evento de música na Igreja." },
{ "grupo_id": 6, "id": 180, "titulo_pergunta": "participar de um grupo em que somos ensinados a desenvolver habilidades artísticas." },
{ "grupo_id": 7, "id": 181, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 182, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 183, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 184, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 185, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 186, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 187, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 188, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 189, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 190, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 191, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 192, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 193, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 194, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 195, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 196, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 197, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 198, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 199, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 200, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 201, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 202, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 203, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 204, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 205, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 206, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 207, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 208, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 209, "titulo_pergunta": "" },
{ "grupo_id": 7, "id": 210, "titulo_pergunta": "" }
])

Resposta.create([
{ "grupo_id": 1, "resposta": "Nem um pouco", "peso": 0 },
{ "grupo_id": 1, "resposta": "Pouco", "peso": 1 },
{ "grupo_id": 1, "resposta": "Mais ou menos", "peso": 2 },
{ "grupo_id": 1, "resposta": "Muito", "peso": 3 },
{ "grupo_id": 1, "resposta": "Muitíssimo", "peso": 4 },
{ "grupo_id": 2, "resposta": "Nenhuma vontade", "peso": 0 },
{ "grupo_id": 2, "resposta": "Pouca vontade", "peso": 1 },
{ "grupo_id": 2, "resposta": "Apenas vontade", "peso": 2 },
{ "grupo_id": 2, "resposta": "Grande vontade", "peso": 3 },
{ "grupo_id": 2, "resposta": "Enorme vontade", "peso": 4 },
{ "grupo_id": 3, "resposta": "Nunca", "peso": 0 },
{ "grupo_id": 3, "resposta": "Raramente", "peso": 1 },
{ "grupo_id": 3, "resposta": "De vez em quando", "peso": 2 },
{ "grupo_id": 3, "resposta": "Frequentemente", "peso": 3 },
{ "grupo_id": 3, "resposta": "Muitas vezes", "peso": 4 },
{ "grupo_id": 4, "resposta": "Não correspondem", "peso": 0 },
{ "grupo_id": 4, "resposta": "Muito pouco", "peso": 1 },
{ "grupo_id": 4, "resposta": "Mais ou menos", "peso": 2 },
{ "grupo_id": 4, "resposta": "Fortemente", "peso": 3 },
{ "grupo_id": 4, "resposta": "Muito fortemente", "peso": 4 },
{ "grupo_id": 5, "resposta": "É bem difícil", "peso": 0 },
{ "grupo_id": 5, "resposta": "É relativamente difícil", "peso": 1 },
{ "grupo_id": 5, "resposta": "Não é nem fácil nem difícil", "peso": 2 },
{ "grupo_id": 5, "resposta": "É fácil", "peso": 3 },
{ "grupo_id": 5, "resposta": "É muito fácil", "peso": 4 },
{ "grupo_id": 6, "resposta": "Nem um pouco", "peso": 0 },
{ "grupo_id": 6, "resposta": "Pouco", "peso": 1 },
{ "grupo_id": 6, "resposta": "Mais ou menos", "peso": 2 },
{ "grupo_id": 6, "resposta": "Muito", "peso": 3 },
{ "grupo_id": 6, "resposta": "Muitíssimo", "peso": 4 },
{ "grupo_id": 7, "resposta": "que de forma nenhuma", "peso": 0 },
{ "grupo_id": 7, "resposta": "que raramente", "peso": 1 },
{ "grupo_id": 7, "resposta": "que em algumas situações", "peso": 2 },
{ "grupo_id": 7, "resposta": "que", "peso": 3 },
{ "grupo_id": 7, "resposta": "muito bem que", "peso": 4 }
])
