package in.softronix.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import in.softronix.bean.Student;
import in.softronix.entity.StudentEntity;
import in.softronix.service.StudentService;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class StudentController {
	
	@Autowired
	StudentService service;

	@GetMapping("/")
	public String getHomePage()
	{
		return "home";
				
	}
	
	@GetMapping("/reg")
	public String loadRegData(Model model)
	{
		List<String> courseList = new ArrayList<>();
		
		courseList.add("java");
		courseList.add("python");
		courseList.add("data-science");
		courseList.add("Devops");
		courseList.add("BigData");
		courseList.add("PHP");
		courseList.add("Testing");
		courseList.add("C#");
		courseList.add("AI");
		
		
		List<String> timingList = new ArrayList<>();
		
	
		timingList.add("7.00am");
		timingList.add("8.00am");
		timingList.add("9.00am");
		timingList.add("10.00am");
		timingList.add("4.00pm");
		timingList.add("5.00pm");
		timingList.add("6.00pm");
		timingList.add("7.00pm");
		
		Student student = new Student();
		
		
		
		model.addAttribute("course", courseList);
		model.addAttribute("timing", timingList);
		model.addAttribute("student", student);
		
				
		return "reg";
	}
	
	
	@PostMapping("/save")
	public String regStudent(StudentEntity student)
	{
		service.saveStudent(student);
		return "redirect:/display";
		
	}
	
	
	@GetMapping("/display")
	public String showStdRecord(Model model)
	{
	
		List<StudentEntity> student = service.getAllStudent();
		model.addAttribute("student",student);
		
		return "display";
		
	}
	
	//------------------------Update--------------------------------------
	
	
	@GetMapping("/edit/{id}")
	public String getEditPage(@PathVariable("id") Integer id, Model model)
	{
		StudentEntity student = service.getStudent(id);
		
		List<String> courseList = new ArrayList<>();
		
		courseList.add("java");
		courseList.add("python");
		courseList.add("data-science");
		courseList.add("Devops");
		courseList.add("BigData");
		courseList.add("PHP");
		courseList.add("Testing");
		courseList.add("C#");
		courseList.add("AI");
		
		List<String> timingList = new ArrayList<>();
		
		
		timingList.add("7.00am");
		timingList.add("8.00am");
		timingList.add("9.00am");
		timingList.add("10.00am");
		timingList.add("4.00pm");
		timingList.add("5.00pm");
		timingList.add("6.00pm");
		timingList.add("7.00pm");
		
		
		model.addAttribute("course", courseList);
		model.addAttribute("timing", timingList);
		model.addAttribute("student", student);
		
		return "update";
	}
	
	
	@PostMapping("/saveupdate")
	public String updateSave(StudentEntity student) {
		System.out.println(student.getId());
		service.updateStudent(student);
		
		return "redirect:/display";
	}
	
	
	
	@GetMapping("/delete")
	public String deleteStudent(@RequestParam("id") Integer id)
	{
		service.deleteStudent(id);
		
		
		return "redirect:/display";
	}
	
	
}
