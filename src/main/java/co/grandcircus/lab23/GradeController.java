package co.grandcircus.lab23;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class GradeController {
	
	@Autowired
	private GradeDao gradeDao;
	
	@RequestMapping("/")
	public String index() {
		return "redirect:/grades";
	}
	
	@RequestMapping("/grades")
	public String list(Model model) {
		List<Grade> grades = gradeDao.findAll();
		double totalScore = 0;
		double totalTotal = 0;
		for(Grade g : grades) {
			totalScore += g.getScore();
			totalTotal += g.getTotal();
		}
		double totalPercentage = (totalScore / totalTotal) * 100;
		model.addAttribute("grades", grades);
		model.addAttribute("totalPercentage", String.format("Overall grade: %.2f", totalPercentage));
		return "index";
	}
	
	@RequestMapping("/grades/add")
	public String showAddForm() {
		return "add";
	}
	@RequestMapping("/rooms/added-grade")
	public String submitAddForm(Grade grade, Model model) {
		gradeDao.create(grade);
		model.addAttribute(grade);
		return "added-grade";
	}
	@RequestMapping("/grade/delete")
	public String deleteRoom(@RequestParam("id") Long id) {
		gradeDao.removeById(id);
		return "redirect:/grades";
	}

}
