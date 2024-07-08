package data;

public class Student {
	private String name;
		
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int kor;
	public int eng;
	public int math;
	
	public int sum() {
		return kor+eng+math;
	}
	public float avr() {
		float sum=sum();
		return sum/3;
	}
	public String toString() {
		return name+","+kor+","+eng+","+math;
	}
}
