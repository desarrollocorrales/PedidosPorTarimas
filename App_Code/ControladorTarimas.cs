using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ControladorTarimas
/// </summary>
public class ControladorTarimas
{
	public ControladorTarimas()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public List<Tarima> obtenerTarimas(DateTime dtFechaProduccion)
    {
        List<Tarima> lstTarimas = new List<Tarima>();
        Tarima t = new Tarima();
        t.i_ID_Tarima = 1;
        t.s_Clave_Articulo = "Perro";
        t.s_Articulo = "Roduwaleru";
        t.d_Cantidad = 12.021m;
        t.s_Unidad = "KG";
        lstTarimas.Add(t);
        return lstTarimas;
    }
}