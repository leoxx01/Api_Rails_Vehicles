# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.7.0

* Rails version 6.0.3

* DataBase sqlite3


## Exemplo de json que tem que ser passado para criação(POST) e atualização(PUT)


**{
	"veiculo":{
			"marca": "Pegout",
			"veiculo": "hat",
			"ano": 2005,
			"description":"Teste",
			"vendido": false
		}
}**

# Exemplos de EndPoints

## # GET http://localhost:3000/api/v1/veiculos

**Retorna Todos Veiculos**

## # GET http://localhost:3000/api/v1/veiculos/:id

**Retorna o Veiculo com ID correspondente**

## # POST http://localhost:3000/api/v1/veiculos

**Criação de um Veiculo na base**

## # DELETE http://localhost:3000/api/v1/veiculos/:id

**Deleta o Veiculo com ID correspondente da base**

## # PUT http://localhost:3000/api/v1/veiculos/:id

**Atualiza com o json passado a as infomações do veiculo com o ID correspondente**
