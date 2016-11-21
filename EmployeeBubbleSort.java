/**
 * 
 */
package com.staff;

import java.util.ArrayList;
import java.util.List;

public class EmployeeBubbleSort {

	public static void main(String[] args) {
		 List<Employee> employeeeList = new ArrayList<Employee>();

	        employeeeList.add(new Employee("Harish", "Samtani"));
	        employeeeList.add(new Employee("Andrew", "Anderson"));
	        employeeeList.add(new Employee("Robert", "alling"));
	        employeeeList.add(new Employee("Andrew", "alling"));
	        
	        System.out.println("**Before Sorting**");
	        
	        for (Employee employeee :employeeeList) {
	            System.out.println(employeee.getFullName());
	        }

	        bubbleSort(employeeeList);
	        
	        System.out.println("**After Sorting**"); 
	        for (Employee employeee :employeeeList) {
	            System.out.println(employeee.getFullName());
	        }
	}

	/**
	 * @param employeeeList
	 */
	private static void bubbleSort(List<Employee> employees){
        for(int i = 0; i< employees.size();i++){
            for(int j=0;j< employees.size()-1;j++){
                if(employees.get(j).compareTo(employees.get(j+1)) > -1){
                    Employee temp = employees.get(j);
                    employees.set(j,employees.get(j+1));
                    employees.set(j+1, temp);
                }
            }
        }
    }

	
}
