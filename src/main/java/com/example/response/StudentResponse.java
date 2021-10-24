package com.example.response;

import java.util.ArrayList;
import java.util.List;

import com.example.entity.Student;
import com.example.entity.Subject;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class StudentResponse {

	private long id;

	private String firstName;

	private String lastName;

	private String email;
	
	private String street;

	private String city;
	
	private List<SubjectResponse> learningSubjects;

	// internal use.. dont expose
	private Student student;

	private String fullName;
	
	public StudentResponse (Student student) {
		this.student  = student;
		this.id = student.getId();
		this.firstName = student.getFirstName();
		this.lastName = student.getLastName();
		this.email = student.getEmail();
		
		this.street = student.getAddress().getStreet();
		this.city = student.getAddress().getCity();

// will change to load only when user asks for it (lazy loading)
//		if (student.getLearningSubjects() != null) {
//			learningSubjects = new ArrayList<SubjectResponse>();
//			for (Subject subject: student.getLearningSubjects()) {
//				learningSubjects.add(new SubjectResponse(subject));
//			}
//		}
	}

}
