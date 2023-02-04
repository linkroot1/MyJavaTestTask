package ru.pavlenko.project.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import ru.pavlenko.project.entities.ClientEntity;
import ru.pavlenko.project.entities.CreditApplicationEntity;
import ru.pavlenko.project.entities.CreditContractEntity;
import ru.pavlenko.project.models.SearchingForm;
import ru.pavlenko.project.services.ClientService;
import ru.pavlenko.project.services.CreditApplicationService;
import ru.pavlenko.project.services.CreditContractService;

import java.util.List;

@Controller
public class MainController {
    private ClientService clientService;
    private CreditApplicationService creditApplicationService;
    private CreditContractService creditContractService;

    @Autowired
    public void setClientService(ClientService clientService) {
        this.clientService = clientService;
    }

    @Autowired
    public void setCreditApplicationService(CreditApplicationService creditApplicationService) {
        this.creditApplicationService = creditApplicationService;
    }

    @Autowired
    public void setCreditContractService(CreditContractService creditContractService) {
        this.creditContractService = creditContractService;
    }

    @GetMapping("/")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @GetMapping("/clients_list")
    public ModelAndView allClients() {
        List<ClientEntity> clientEntities = clientService.allClients();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("clients_list");
        modelAndView.addObject("clientsList", clientEntities);
        return modelAndView;
    }

    @PostMapping("/clients_list")
    public ModelAndView clientFilter(@ModelAttribute SearchingForm form) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("clients_list");
        modelAndView.addObject("clientsList", clientService.searchClients(form));
        return modelAndView;
    }

    @GetMapping("/clients_list/{id}")
    public ModelAndView showClient(@PathVariable long id) {
        ClientEntity clientEntity = clientService.getById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("client");
        modelAndView.addObject("client", clientEntity);
        return modelAndView;
    }

    @GetMapping("/creditApplications_list")
    public ModelAndView allCreditApplications() {
        List<CreditApplicationEntity> creditApplicationEntities = creditApplicationService.allCreditApplications();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("creditApplications_list");
        modelAndView.addObject("creditApplicationsList", creditApplicationEntities);
        return modelAndView;
    }

    @GetMapping("/creditApplications_list/{id}")
    public ModelAndView showCreditApplication(@PathVariable long id) {
        CreditApplicationEntity creditApplicationEntity = creditApplicationService.getById(id);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("creditApplication");
        modelAndView.addObject("creditApplication", creditApplicationEntity);
        return modelAndView;
    }

    @GetMapping("/creditContracts_list")
    public ModelAndView allCreditContracts() {
        List<CreditContractEntity> creditContracts = creditContractService.allSignedCreditContracts();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("creditContracts_list");
        modelAndView.addObject("creditContractsList", creditContracts);
        return modelAndView;
    }
}
