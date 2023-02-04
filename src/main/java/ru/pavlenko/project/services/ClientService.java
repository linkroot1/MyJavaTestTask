package ru.pavlenko.project.services;

import ru.pavlenko.project.entities.ClientEntity;
import ru.pavlenko.project.models.SearchingForm;

import java.util.List;

public interface ClientService {

    List<ClientEntity> allClients();
    void create(ClientEntity clientEntity);
    void update(ClientEntity clientEntity);
    void delete(ClientEntity clientEntity);
    ClientEntity getById(long id);
    List<ClientEntity> searchClients(SearchingForm form);
}
