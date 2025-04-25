package in.softronix.entity;

import java.time.LocalDate;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class StudentEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="ID")
	private Integer id;
	
	@Column(name="Name")
	private String name;
	
	@Column(name="Email")
	private String email;
	
	@Column(name="Gender")
	private String gender;
	
	@Column(name="Course")
	private String course;
	
	
	@Column(name="Timing")
	private String timing;
	
	@CreationTimestamp
	@Column(name =  "Create_Date",updatable = false)
	private LocalDate createDate;
	
	
	@CreationTimestamp
	@Column(name =  "Update_Date",insertable =false)
	private LocalDate updateDate;
	
	
	
	

}
