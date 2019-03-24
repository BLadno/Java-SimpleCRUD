package projekt.spring.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.hibernate.HibernateException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import projekt.hibernate.database.*;

@Controller
public class HomeController {
	private ManageEmployee manageEmployee;
	HomeController(){
		manageEmployee = new ManageEmployee();
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "home";
	}
	
	@RequestMapping(value = "/userList", method = RequestMethod.GET)
	public String userList(Model model) {
		
		List employees = manageEmployee.listEmployees2();
		
		model.addAttribute("employees",employees);
		model.addAttribute("size", employees.size()-1);

		return "userList";
	}
	@RequestMapping(value = "/addUserForm", method = RequestMethod.GET)
	public String addUserForm(Model model) {
		return "addUserForm";
	}
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String addUser(@Validated Employee employee,Model model) {

			manageEmployee.addEmployee(employee);
			model.addAttribute("info_type","success");
			model.addAttribute("info","User "+employee.getFirstName()+" "+ employee.getLastName()+" has been successfully added.");
		return "home";
	}
	@RequestMapping(value = "/selectUser", method = RequestMethod.POST)
	public String selectUser(int id,Model model) {

		model.addAttribute("id",id);
		Employee employee = manageEmployee.getEmployee(id);
		model.addAttribute("employee", employee);
		return "selectUser";
	}
	@RequestMapping(value = "/deleteUser", method = RequestMethod.POST)
	public String deleteUser(int id,Model model) {

		manageEmployee.deleteEmployee(id);
		model.addAttribute("info_type","success");
		model.addAttribute("info","User with id: "+id+" has been successfully deleted");
		return "home";
	}
	@RequestMapping(value = "/updateUserForm", method = RequestMethod.POST)
	public String updateUserForm(int id,Model model) {

		model.addAttribute("id",id);
		Employee employee = manageEmployee.getEmployee(id);
		model.addAttribute("employee", employee);
		return "updateUserForm";
	}
	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public String updateUser(int id,@Validated Employee employee,Model model) {
		manageEmployee.updateEmployee(id,employee);
		model.addAttribute("info_type","success");
		model.addAttribute("info","User info succesfully updated: "+employee.getFirstName()+" "+ employee.getLastName());

		return "home";
	}
}