package main.java.uia.com.contabilidad.mvc.controller;


import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import main.java.uia.com.contabilidad.mvc.model.User;



@Controller
public class ClientesController {

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/clientes", method = RequestMethod.GET)
	public String cargaClientes(Locale locale, Model model) {
		System.out.println("Pagina Clientes solicitada, locale = " + locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "verClientes";
	}
	
	@RequestMapping(value = "/compras", method = RequestMethod.GET)
	public String cargaCompras(@RequestParam String clienteName) 
	{
		System.out.println("Pagina Compras solicitada, locale = ");
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);

		String formattedDate = dateFormat.format(date);

		//model.addAttribute("serverTime", formattedDate);

		return "verCompras";
	}

	@RequestMapping(value = "/cuentas", method = RequestMethod.GET)
	public String cargaCuentas(@RequestParam String clienteName) 
	{
		System.out.println("Pagina Compras solicitada, locale = ");
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);

		String formattedDate = dateFormat.format(date);

		//model.addAttribute("serverTime", formattedDate);

		return "verCuentas";
	}
}
