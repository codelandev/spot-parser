# Spot::Parser

Um parser de documentos da Spot.
No momento, gera um HTML com conteúdo baseado nos parâmetros passados

## Instalação

Adicione esta linha no Gemfile da sua aplicação:

```ruby
gem 'spot-parser'
```

Então execute:

    $ bundle

Ou instale com:

    $ gem install spot-parser

## Como usar

Básico:
```ruby
Spot::Parser.generate_html(:template_name, some_hash)
```

Isso gera um HTML com a estrutura básica. Somente com o conteúdo que seria dentro de `<body>`.

### Parâmetros:
- `:template_name` é o nome do documento que vai ser gerado. Pode ser um symbol ou String.
- `some_hash` é um Hash com as variáveis que serão usadas no template. Cada template tem suas próprias variáveis.
  Obviamente, não precisa ser uma variável, pode ser diretamente, alguns exemplos:
```ruby
  some_hash = { bla: 'foo', open: 'bar'}
  Spot::Parser.generate_html(:template_name, some_hash)
  Spot::Parser.generate_html(:template_name, bla: 'foo', logo: 'http://my.domain/my/image.png')
  Spot::Parser.generate_html(:template_name, date: '01/01/2001', company: 'Codeland')
```
  Existem duas variáveis com nome reservado. `store` e `promoter`. Que são duas entidades. O restante é colocado no template com a variável `extra`, sendo acessível com o nome do atributo, como por exemplo:
```ruby
  some_hash = { bla: 'foo', open: 'bar'}
  Spot::Parser.generate_html(:template_name, some_hash)
    # no template 'template_name' pode ser utilizado
    # extra[:bla], extra[:open]
```

## Contribuindo

1. Fork it ( https://github.com/codelandev/spot-parser/fork )
2. Crie sua feature branch (`git checkout -b my-new-feature`)
3. Commite suas modificações (`git commit -am 'Add some feature'`)
4. Envie sua branch (`git push origin my-new-feature`)
5. Crie um novo Pull Request
