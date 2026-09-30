package dao;
import java.sql.Connection;
import java.sql.Statement;

import Dominio.Seguro;


public class SeguroDao {

	
	public int AgregarSeguro(Seguro seguro) {
      
        String query = "INSERT INTO seguros (descripcion, idTipo, costoContratacion, costoAsegurado) VALUES ('" 
                     + seguro.getDescripcion() + "', " 
                     + seguro.getIdTipo() + ", " 
                     + seguro.getCostoContratacion() + ", " 
                     + seguro.getCostoAsegurado() + ")";
        
        Connection cn = null;
        int filas = 0;
        try {
          
            cn = Conexion.getConexion().getSQLConexion();
            
            Statement st = cn.createStatement();
            filas = st.executeUpdate(query);
            
           
            if (filas > 0) {
                cn.commit();
            }
            
            st.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return filas;
    }
}
	
	
	
	

