package servlets;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

// Importamos tus clases para poder usarlas acá adentro
import Dominio.Seguro; 
import dao.SeguroDao;

// Esta ruta DEBE coincidir con el action del formulario en el JSP
@WebServlet("/ServletSeguro")
public class ServletSeguro extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletSeguro() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Redirigimos directamente al formulario de alta de seguros para evitar desajustes de nombres en el DAO
		RequestDispatcher dispatcher = request.getRequestDispatcher("/AgregarSeguro.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. CAPTURAR EL BOTÓN ACEPTAR
		// Preguntamos si el usuario hizo clic en el botón que tiene name="btnAceptar"
		if (request.getParameter("btnAceptar") != null) {
			
			// 2. ATRAPAR LOS DATOS DEL FORMULARIO
			// request.getParameter trae el texto de las cajitas usando el "name" del HTML
			String descripcion = request.getParameter("descripcion");
			
			// Los números llegan como texto, así que hay que convertirlos (parsearlos) a int o double
			int idTipo = Integer.parseInt(request.getParameter("idTipo"));
			double costoContratacion = Double.parseDouble(request.getParameter("costoContratacion"));
			double costoAsegurado = Double.parseDouble(request.getParameter("costoAsegurado"));
			
			// 3. ARMAR EL OBJETO DOMINIO
			// OJO: No le pasamos el ID porque MySQL se encarga solo (es Autoincremental)
			Seguro nuevoSeguro = new Seguro(descripcion, idTipo, costoContratacion, costoAsegurado);
			
			// 4. LLAMAR AL DAO PARA GUARDAR EN LA BASE DE DATOS
			SeguroDao dao = new SeguroDao();
			int filas = dao.AgregarSeguro(nuevoSeguro);
			
			// Si filas es mayor a 0, significa que se insertó con éxito
			if(filas > 0) {
				System.out.println("Seguro guardado correctamente en la Base de Datos.");
			}
		}
		
		// 5. REDIRIGIR LA VISTA
		// Volvemos a cargar la página AgregarSeguro.jsp para que las cajitas queden en blanco
		RequestDispatcher dispatcher = request.getRequestDispatcher("/AgregarSeguro.jsp");
		dispatcher.forward(request, response);
	}
}