package TestEntidades;

import java.util.List;

import DAO.ClassClienteImp;
import model.TblCliente;

public class TestEntidadCliente {
	public static void main(String[] args) {
		//Instancias:
		TblCliente cliente = new TblCliente();
		
		ClassClienteImp crud = new ClassClienteImp();
	/*
		cliente.setNombre("Nilson Ronaldo");
		cliente.setApellido("Ramirez Cora");
		cliente.setDni("1045789");
		cliente.setEmail("nilson@gmail.com");
		cliente.setTelf("3871459");
		cliente.setSexo("M");
		cliente.setNacionalidad("argentina");
		
		crud.RegistrarCliente(cliente);
	
	*/	
		List<TblCliente> lista = crud.ListadoCliente();
		
		for(TblCliente li : lista){
			System.out.println("Usuario "+li.getIdcliente() +" :" + li.getNombre() );;
		}
	
		
		
	}
}
