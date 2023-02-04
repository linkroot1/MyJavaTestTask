package ru.pavlenko.project.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.pavlenko.project.dao.ApprovedCreditDecisionDAO;
import ru.pavlenko.project.entities.CreditApplicationEntity;

import javax.transaction.Transactional;

@Service
public class ApprovedCreditDecisionServiceImpl implements ApprovedCreditDecisionService {

    private ApprovedCreditDecisionDAO approvedCreditDecisionDAO;

    @Autowired
    public void setApprovedCreditDecisionDAO(ApprovedCreditDecisionDAO approvedCreditDecisionDAO) {
        this.approvedCreditDecisionDAO = approvedCreditDecisionDAO;
    }

    @Transactional
    @Override
    public void create(CreditApplicationEntity creditApplicationEntity) {

    }
}
