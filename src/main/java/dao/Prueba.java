package dao;

import Dominio.Seguro;

public class Prueba {

    public static void main(String[] args) {
       
        SeguroDao dao = new SeguroDao();

       
        Seguro nuevoSeguro = new Seguro("Seguro contra terceros", 1, 1500.00, 35000.00);

   
        int filas = dao.AgregarSeguro(nuevoSeguro);

        
        if (filas > 0) {
            System.out.println("¡Prueba exitosa! El seguro se insertó exitosamente");
        } else {
            System.out.println("Error: No se pudo insertar el registro.");
        }
    }
}