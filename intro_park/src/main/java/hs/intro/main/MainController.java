package hs.intro.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MainController {

	@GetMapping("/resume")
    public String resume(Model model){
        return "resume";
    }

    @GetMapping("/freelancer")
    public String freelancer(Model model){
        return "freelancer";
    }

    @GetMapping("/agency")
    public String agency(Model model){
        return "agency";
    }


	@GetMapping("/")
    public String main(Model model){
        return "index";
    }



}


