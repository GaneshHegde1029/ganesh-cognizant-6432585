public class Main {
    public static void main(String[] args) {
        Employee emp = new Employee();
        emp.setName("John Doe");

        EmployeeDAO dao = new EmployeeDAO();
        dao.addEmployee(emp);
    }
}
