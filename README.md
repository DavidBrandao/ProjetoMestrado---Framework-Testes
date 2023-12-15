# Projeto Mestrado -- Framework Integrador Testes Automatizados Web

Este projeto consiste na criação de um framework integrador de testes automatizados web para
ser aplicado na UsinaPE como forma de validar implementações e medir a qualidade das soluções
desenvolvidas pelos times do projeto.

## Downloads Necessários
---
- Linguagem [Ruby - Versão 2.5.3](https://github.com/oneclick/rubyinstaller2/releases/download/rubyinstaller-2.5.3-1/rubyinstaller-devkit-2.5.3-1-x64.exe)
- [Visual Studio Code](https://code.visualstudio.com/download)
- Extensões do visual studio
-- Cucumber (Gherkin) Full Support
-- Ruby Language Colorization
- [Chromedriver](https://chromedriver.chromium.org/downloads) compatível com a versão atual do navegador

## Dependências
---
| Gem                | Versão  |
| ------             | ------  |
| Bundler            | 2.1.4   |
| Capybara           | 3.3130  |
| Cucumber           | 3.1.2   |
| Rspec              | 3.9.0   |
| Selenium-Webdriver | 3.142.7 |
| FFI                | 1.12.2  |
| Site_Prism         | 3.0     |

### Considerações

> É importante que estas versões sejam instaladas
>  nas mesmas versões que o informado.
> A utilização de versões diferentes pode ocasionar
> no não funcinamento do projeto.

## Installation

Clonar o projeto:

```sh
git clone https://github.com/DavidBrandao/ProjetoMestrado---Framework-Testes.git
```
Acessar o projeto por um terminal e executar o comando:

```sh
gem install bundler
```
Instalar dependências do projeto:

```sh
bundle install
```

## Executando Testes

Uma vez acessado a pasta do projeto via terminal, existem duas formas de executar testes:

Executar todos os testes do projeto:

```sh
cucumber
```

Executar testes a partir de uma tag:

```sh
cucumber -t @TagName
```