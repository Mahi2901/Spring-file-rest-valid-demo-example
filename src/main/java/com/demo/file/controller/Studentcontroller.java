package com.demo.file.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.xml.ws.RespectBinding;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.demo.file.model.StudentModel;
import com.demo.file.repository.StudRepo;
import com.demo.file.service.Studservice;

@Controller
public class Studentcontroller 
{
	
	@Autowired
	Studservice studservice;
	
	@Autowired
	StudRepo studRepo;
	
	private static String UPLOADED_FOLDER = "D://temp//";

	
	@RequestMapping("/")
	public String show() {
		return "Student";
	}
	
	@RequestMapping("/students/save")
	public String studsave(@ModelAttribute StudentModel s,@RequestParam("file") MultipartFile file,
            RedirectAttributes redirectAttributes) 
	{
		if (file.isEmpty()) {
            redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
            return "redirect:uploadStatus";
        }

        try {

            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
            Files.write(path, bytes);

            redirectAttributes.addFlashAttribute("message",
                    "You successfully uploaded '" + file.getOriginalFilename() + "'");

        } catch (IOException e) {
            e.printStackTrace();
        }
        String filename = file.getOriginalFilename();
        s.setImage(filename);
        
        studservice.save(s);

        return "redirect:/uploadStatus";

		
	}
	
	 @GetMapping("/uploadStatus")
	 public String uploadStatus() 
	 {
	        return "uploadStatus";
	 }
	 
	 @GetMapping("/students")
	 @ResponseBody
	 public List<StudentModel> getAllStudents()
	 {
			return (List<StudentModel>) studservice.findAll();
	 }
	 
	 /*get all Student*/
	 @PostMapping("/students")
	 @ResponseBody
	 public StudentModel createStudent(@RequestBody StudentModel s)
	 {
		return studservice.save(s);
	 }
	 
	 
		
	 /*get Student by sid*/
	 @GetMapping("/students/{id}")
	 @ResponseBody
	 public StudentModel getstudentById(@PathVariable(value="id") long sid)
	 {
			StudentModel s=studservice.findOne(sid);
			return s;
	 }
		
		
	 /*update an Student by sid*/
	 @PutMapping("/students/{id}")
	 @ResponseBody
	 public StudentModel updateStudent(@PathVariable(value="id") long sid,@RequestBody StudentModel s1){
			StudentModel s=studservice.findOne(sid);
			s.setName(s1.getName());
			s.setDob(s1.getDob());
			s.setEmail(s1.getEmail());
			s.setAddress(s1.getAddress());
			s.setDebitcard(s1.getDebitcard());
			s.setPin(s1.getPin());
			s.setPassword(s1.getPassword());
			s.setMobile(s1.getMobile());
			
			StudentModel updatesloyee=studservice.save(s);
			return updatesloyee;
	 }
		
	 /*Delete an Student*/
	 @DeleteMapping("/students/{id}")
	 @ResponseBody
	 public ResponseEntity<StudentModel> deleteStudent(@PathVariable(value="id") long sid)
	 {
			
			StudentModel s=studservice.findOne(sid);
			if(s==null) 
			{
				return ResponseEntity.notFound().build();
			}
			studservice.delete(s);
			
			return ResponseEntity.ok().build();
			
			
	 }	 


}
