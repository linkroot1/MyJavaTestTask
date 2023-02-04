package ru.pavlenko.project.services;

import ru.pavlenko.project.entities.CreditApplicationEntity;
import ru.pavlenko.project.models.CreditApplicationForm;

import java.util.List;

public interface CreditApplicationService {

    List<CreditApplicationEntity> allCreditApplications();
    long create(CreditApplicationForm form);
    void makeDecision(CreditApplicationEntity creditApplicationEntity);
    void delete(CreditApplicationEntity creditApplicationEntity);
    CreditApplicationEntity getById(long id);
}
