package ru.pavlenko.project.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.pavlenko.project.dao.CreditApplicationDAO;
import ru.pavlenko.project.dao.CreditContractDAO;
import ru.pavlenko.project.entities.CreditContractEntity;
import ru.pavlenko.project.models.CreditContractForm;

import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;

@Service
public class CreditContractServiceImpl implements CreditContractService{

    CreditContractDAO creditContractDAO;

    CreditApplicationDAO creditApplicationDAO;

    @Autowired
    public void setCreditContractDAO(CreditContractDAO creditContractDAO) {
        this.creditContractDAO = creditContractDAO;
    }

    @Autowired
    public void setCreditApplicationDAO(CreditApplicationDAO creditApplicationDAO) {
        this.creditApplicationDAO = creditApplicationDAO;
    }

    @Override
    @Transactional
    public List<CreditContractEntity> allCreditContracts() {
        return creditContractDAO.allCreditContracts();
    }

    @Override
    @Transactional
    public List<CreditContractEntity> allSignedCreditContracts() {
        return creditContractDAO.allSignedCreditContracts();
    }

    @Override
    @Transactional
    public void sign(CreditContractForm creditContractForm, long creditApplicationId) {
        CreditContractEntity contract = new CreditContractEntity();
        contract.setSigningStatus(creditContractForm.getSigningStatus());
        contract.setSigningDate(new Date(System.currentTimeMillis()));
        contract.setCreditApplicationEntity(creditApplicationDAO.getById(creditApplicationId));
        creditContractDAO.create(contract);
    }

    @Override
    @Transactional
    public void update(CreditContractEntity creditContractEntity) {

    }

    @Override
    @Transactional
    public void delete(CreditContractEntity creditContractEntity) {

    }

    @Override
    @Transactional
    public CreditContractEntity getById(long id) {
        return null;
    }
}
