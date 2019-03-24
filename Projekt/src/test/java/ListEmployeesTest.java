import static org.junit.Assert.*;

import org.junit.Test;
import projekt.hibernate.database.*;
import java.util.List; 
import java.util.Date;
import java.util.Iterator; 

public class ListEmployeesTest {

	@Test
	public void test() {
		ManageEmployee manageEmployee = new ManageEmployee();
		List employees = manageEmployee.listEmployees2();
		Employee employee = (Employee) employees.get(0); 
		assertEquals(employee.getFirstName(),"Zara");
		assertEquals(employee.getLastName(),"Ali");
		assert(employee.getSalary()==5000);
	}

}
