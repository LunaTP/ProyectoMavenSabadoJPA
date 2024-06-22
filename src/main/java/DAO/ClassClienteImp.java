package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import Interfaces.ICliente;
import model.TblCliente;

public class ClassClienteImp implements ICliente{

	@Override
	public void RegistrarCliente(TblCliente cliente) {
		// Establacer conexión con la unidad de persistencia
		EntityManagerFactory fabr = Persistence.createEntityManagerFactory("ProyectoMavenSabadoJPA");
		//Permite gestionar entidades
		EntityManager em = fabr.createEntityManager();
		//Iniciar Tran
		em.getTransaction().begin();
		
		//registrar
		em.persist(cliente);
		
		System.out.println("Cliente registrado satisfactoriamente");
		
		//Confirmar
		em.getTransaction().commit();
		
		//Cerrar
		em.close();
	
	}

	@Override
	public void ActualizarCliente(TblCliente cliente) {

		EntityManagerFactory fabr = Persistence.createEntityManagerFactory("ProyectoMavenSabadoJPA");
		
		EntityManager em = fabr.createEntityManager();
		
		em.getTransaction().begin();
		
		em.merge(cliente);
		
		em.getTransaction().commit();
		
		em.close();
		
	}

	@Override
	public void EliminarCliente(TblCliente cliente) {
		// TODO Auto-generated method stub
		
		EntityManagerFactory fabr = Persistence.createEntityManagerFactory("ProyectoMavenSabadoJPA");
		
		EntityManager em = fabr.createEntityManager();
		
		em.getTransaction().begin();
		
		TblCliente elim = em.merge(cliente);
		
		em.remove(elim);
		
		System.out.println("Cliente eliminado de la base de datos");
		
		em.getTransaction().commit();
		
		em.close();
		
		
	}

	@Override
	public TblCliente BuscarCliente(TblCliente cliente) {

		EntityManagerFactory fabr = Persistence.createEntityManagerFactory("ProyectoMavenSabadoJPA");
		
		EntityManager em = fabr.createEntityManager();
		
		em.getTransaction().begin();
		
		TblCliente buscado = em.find(TblCliente.class, cliente.getIdcliente());
		
		em.getTransaction().commit();
		
		em.close();
		
		return buscado;
	}

	@Override
	public List<TblCliente> ListadoCliente() {

		EntityManagerFactory fabr = Persistence.createEntityManagerFactory("ProyectoMavenSabadoJPA");
		
		EntityManager em = fabr.createEntityManager();
		
		em.getTransaction().begin();;
		
		
		List<TblCliente> lista = em.createQuery("select c from TblCliente c",TblCliente.class).getResultList();
		
		em.getTransaction().commit();
		
		em.close();
		
		
		return lista;
	}

}
