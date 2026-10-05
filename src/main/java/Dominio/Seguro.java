package Dominio;

public class Seguro {

private int idSeguro; 
private String descripcion; 
private int idTipo; 
private double CostoContratacion; 
private double costoAsegurado; 
private String descripcionTipo;
	
public Seguro() {} 


public Seguro(String descripcion, int idTipo, double costoContratacion, double costoAsegurado) {
	this.descripcion=descripcion; 
	this.idTipo=idTipo; 
	this.CostoContratacion=costoContratacion; 
	this.costoAsegurado=costoAsegurado;
}


public int getIdSeguro() {
	return idSeguro;
}


public void setIdSeguro(int idSeguro) {
	this.idSeguro = idSeguro;
}


public String getDescripcion() {
	return descripcion;
}


public void setDescripcion(String descripcion) {
	this.descripcion = descripcion;
}


public int getIdTipo() {
	return idTipo;
}


public void setIdTipo(int idTipo) {
	this.idTipo = idTipo;
}


public double getCostoContratacion() {
	return CostoContratacion;
}


public void setCostoContratacion(double costoContratacion) {
	CostoContratacion = costoContratacion;
}


public double getCostoAsegurado() {
	return costoAsegurado;
}


public void setCostoAsegurado(double costoAsegurado) {
	this.costoAsegurado = costoAsegurado;
}


public String getDescripcionTipo() {
	return descripcionTipo;
}


public void setDescripcionTipo(String descripcionTipo) {
	this.descripcionTipo = descripcionTipo;
}
	









}
