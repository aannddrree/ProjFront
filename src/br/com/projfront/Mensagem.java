package br.com.projfront;

import java.util.ArrayList;
import java.util.List;

public class Mensagem {

	private String nome;
	private String mensagem;
	
	private static List<Mensagem> lst = new ArrayList<Mensagem>();
	
	public Mensagem(String nome, String mensagem) {
		this.nome = nome;
		this.mensagem = mensagem;
	}
	 
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getMensagem() {
		return mensagem;
	}
	
	public static List<Mensagem> getAll() {
		return lst;
	}
	
	public static void setMensagem(Mensagem mensagem) {
		lst.add(mensagem);
	}
}
