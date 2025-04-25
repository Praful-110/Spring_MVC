package in.softronix.service;



import java.util.List;

import in.softronix.entity.StudentEntity;


public interface StudentService  {
	
	public void saveStudent(StudentEntity student);

	public StudentEntity getStudent(Integer id);
	
	public void deleteStudent (Integer id);
	
	public void updateStudent(StudentEntity student);
	
	public List<StudentEntity> getAllStudent();
	

}
