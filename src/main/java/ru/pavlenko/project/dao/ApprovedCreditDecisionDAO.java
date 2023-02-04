package ru.pavlenko.project.dao;

import ru.pavlenko.project.entities.ApprovedCreditDecisionEntity;

import java.util.List;

public interface ApprovedCreditDecisionDAO {
    List<ApprovedCreditDecisionEntity> allApprovedCreditDecisions();

    void create(ApprovedCreditDecisionEntity approvedCreditDecisionEntity);

    void update(ApprovedCreditDecisionEntity approvedCreditDecisionEntity);

    void delete(ApprovedCreditDecisionEntity approvedCreditDecisionEntity);

    ApprovedCreditDecisionEntity getById(long id);

    public ApprovedCreditDecisionEntity getByCreditApplicationId(long id);
}
