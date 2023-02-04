package ru.pavlenko.project.services;

import ru.pavlenko.project.entities.CreditApplicationEntity;

public interface ApprovedCreditDecisionService {
    void create(CreditApplicationEntity creditApplicationEntity);
}
