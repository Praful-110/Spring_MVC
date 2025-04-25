package in.softronix.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.StudentEntity;
import in.softronix.repo.StudentRepo;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentRepo stdRepo;
	
	@Override
	public void saveStudent(StudentEntity student) {
		stdRepo.save(student);

	}

	@Override
	public StudentEntity getStudent(Integer id) {
		
		Optional<StudentEntity> byId = stdRepo.findById(id);
		
		if(byId.isPresent())
		{
			return byId.get();
		}
		else {
			return null;
		}
	}

	@Override
	public void deleteStudent(Integer id) {
		
		stdRepo.deleteById(id);
		

	}

	@Override
	public void updateStudent(StudentEntity student) {
		
		stdRepo.save(student);
	}

	@Override
	public List<StudentEntity> getAllStudent() {
		
		List<StudentEntity> all = stdRepo.findAll();
		
		return all;
	}

}
