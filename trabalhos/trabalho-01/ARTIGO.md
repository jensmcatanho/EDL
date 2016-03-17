# Lua

## Introdução
**Lua** é uma linguagem de programação multiparadigma e open-source criada em 1993 por membros do Computer Graphics Technology Group da Pontifícia Universidade Católica do Rio de Janeiro (PUC-Rio). Sua criação foi motivada por barreiras comerciais que existiam no Brasil para hardwares e softwares que faziam com que a Tecgraf e seus clientes não pudessem arcar com os custos de compras no exterior e, portanto, o grupo implementou as ferramentas que precisavam a partir do zero.

É uma linguagem extremamente utilizada como linguagem de scripting no desenvolvimento de jogos (em 2003, foi votada como a linguagem de scripting [mais utilizada](https://web.archive.org/web/20031207171619/http://gamedev.net/gdpolls/viewpoll.asp?ID=163) em jogos no GameDev.net) e em outras aplicações pois fornece mecanismos para que o programador implemente características específicas que seu respectivo projeto demandar.

## Influências
Lua foi influenciada por linguagens como C (na qual foi escrita), C++, SNOBOL, Pascal, Modula e Scheme, além também das linguagens SOL (Simple Object Language) e DEL (data-entry language), ambas implementas também pela Tecgraf no inícios dos anos 90, mas que não apresentavam estruturas de controle de fluxo criando a necessidade do desenvolvimento de uma linguagem de programação mais completa.

Sua primeira versão foi projetada para que seus object constructors incorporassem a sintaxe utilizada em SOL. Suas estruturas de controles foram inspiradas em Modula (if, while, repeat-until) e também tiveram influência de CLU através de atribuições múltiplas e múltiplos retornos de chamadas de funções. Ela incorpora também o conceito de C++ de permitir que uma variável local seja declarada apenas no bloco de código onde ela é necessária e o conceito de arrays associativos emprestado da linguagem AWK. LISP e Scheme inspiraram a decisão de desenvolver a tabela como estrutura de dado primária da linguagem.

Em versões mais recentes, a semântica de Lua continuou sendo fortemente influenciada por Scheme.

## Classificação
Lua pode ser considerada uma linguagem imperativa, funcional, procedural e, apesar de não possuir classes, ela consegue reproduzir os comportamentos de orientação a objetos através de programação baseada em protótipos. Além disso, ela possui tipagem fraca, dinâmica e implícita.

## Avaliação Comparativa
Lua é uma boa linguagem para começar o aprendizado de linguagens funcionais devido a sua proximidade sintática com linguagens procedurais, em oposição a linguagens como Haskell e LISP. Lua possui uma sintaxe próxima de Pascal e uma semântica similar a Scheme que inclui anonymous functions e full lexical scoping.

## Códigos Representativos

Exemplo de Delegation simulando OOP.
```
meta = {}

function meta.__tostring(person)
  return person.prefix .. " " .. person.name
end

function meta.__index(table, key)
  return table.prototype[key]
end

job = { prefix="Dr." }
person = { name="Simon",prototype=job } -- create Axel
setmetatable(person,meta) -- install metatable
print(person) -- print "Dr. Simon"
```

## Conclusão
Lua é uma linguagem extensível, leve, de fácil aprendizado e extremamente utilizada como linguagem de script no desenvolvimento de jogos e outros softwares complexos.

## Bibliografia
Site da linguagem: http://www.lua.org/
Wikipedia: https://en.wikipedia.org/wiki/Lua_%28programming_language%29
Stack Overflow: http://stackoverflow.com/questions/3477676/is-lua-an-object-oriented-language
Wikipedia 2: https://en.wikipedia.org/wiki/Prototype-based_programming
LUA as a first approach to functional programming: gaia.fdi.ucm.es/aigaion2/index.php/attachments/single/62
