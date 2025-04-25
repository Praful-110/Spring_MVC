package in.softronix.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import in.softronix.entity.StudentEntity;

public interface StudentRepo extends JpaRepository<StudentEntity, Integer>
{
	

}
