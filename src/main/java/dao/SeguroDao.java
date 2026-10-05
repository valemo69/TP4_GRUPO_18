package dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Dominio.Seguro;
import Dominio.TipoSeguro;


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
	
	public int obtenerProximoId() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	    int proximoId = 1;
	    try {
	        Connection cn = Conexion.getConexion().getSQLConexion();
	        Statement st = cn.createStatement();
	        ResultSet rs = st.executeQuery("SELECT MAX(idSeguro) FROM seguros");
	        if (rs.next()) {
	            proximoId = rs.getInt(1) + 1;   // si la  tabla vacía getInt devuelve 0 así que da 1
	        }
	        rs.close();
	        st.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return proximoId;
	}

	public ArrayList<TipoSeguro> obtenerTipos() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	    ArrayList<TipoSeguro> lista = new ArrayList<>();
	    try {
	        Connection cn = Conexion.getConexion().getSQLConexion();
	        Statement st = cn.createStatement();
	        ResultSet rs = st.executeQuery("SELECT idTipo, descripcion FROM tiposeguros");
	        while (rs.next()) {
	            lista.add(new TipoSeguro(rs.getInt("idTipo"), rs.getString("descripcion")));
	        }
	        rs.close();
	        st.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return lista;
	}
	
	public ArrayList<Seguro> obtenerSeguros() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	    ArrayList<Seguro> lista = new ArrayList<>();
	    
	    String query = "SELECT s.idSeguro, s.descripcion, t.descripcion AS descTipo, s.costoContratacion, s.costoAsegurado " +
	                   "FROM seguros s INNER JOIN tiposeguros t ON s.idTipo = t.idTipo";
	    
	    try {
	        Connection cn = Conexion.getConexion().getSQLConexion();
	        Statement st = cn.createStatement();
	        ResultSet rs = st.executeQuery(query);
	        
	        while (rs.next()) {
	            Seguro seg = new Seguro();
	            seg.setIdSeguro(rs.getInt("idSeguro"));
	            seg.setDescripcion(rs.getString("descripcion"));
	            seg.setDescripcionTipo(rs.getString("descTipo")); // El campo nuevo
	            seg.setCostoContratacion(rs.getDouble("costoContratacion"));
	            seg.setCostoAsegurado(rs.getDouble("costoAsegurado"));
	            
	            lista.add(seg);
	        }
	        rs.close();
	        st.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return lista;
	}
}
	
	
	
	

