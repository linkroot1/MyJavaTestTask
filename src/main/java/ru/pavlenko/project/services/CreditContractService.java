package ru.pavlenko.project.services;

import ru.pavlenko.project.entities.CreditContractEntity;
import ru.pavlenko.project.models.CreditContractForm;

import java.util.List;

public interface CreditContractService {
    List<CreditContractEntity> allCreditContracts();
    List<CreditContractEntity> allSignedCreditContracts();
    void sign(CreditContractForm creditContractForm, long creditApplicationId);
    void update(CreditContractEntity creditContractEntity);
    void delete(CreditContractEntity creditContractEntity);
    CreditContractEntity getById(long id);
}
