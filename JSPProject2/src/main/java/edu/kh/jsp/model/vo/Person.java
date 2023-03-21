package edu.kh.jsp.model.vo;


public class Person {

	//필드
	private String name;
	private int age;
	private String adress;
	
	public Person() {
		
	}
	
	public Person(String name, int age, String adress) {
		super();
		this.name = name;
		this.age = age;
		this.adress = adress;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

	@Override
	public String toString() {
		return name + "/ " + age + "/" + adress;
				
	}

	
	
}
