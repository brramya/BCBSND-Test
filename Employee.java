/**
 * 
 */
package com.staff;

/**
 * @author NBUSIREDDY
 *
 */
public class Employee {

	private String firstName;
    private String lastName;
    
    public Employee(String firstName, String lastName) {
        this.firstName = firstName;
        this.lastName = lastName;
    }
    
	public String getFullName() {
		return getFirstName() + "," + getLastName();
	}
	
    public String getFirstName() {
        return firstName;
    }

	public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int compareTo(Employee employee) {
        if (this.getFirstName().equals(employee.getFirstName())) {
            return this.getLastName().compareToIgnoreCase(employee.getLastName());
        } else {
            return this.getFirstName().compareToIgnoreCase(employee.getFirstName());
        }
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Employee employee = (Employee) o;

        if (!getFirstName().equals(employee.getFirstName())) return false;
        return getLastName().equals(employee.getLastName());

    }

    @Override
    public int hashCode() {
        int result = getFirstName().hashCode();
        result = 31 * result + getLastName().hashCode();
        return result;
    }

}
