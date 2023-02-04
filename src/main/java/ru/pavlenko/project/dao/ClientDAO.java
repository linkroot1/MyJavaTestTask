package ru.pavlenko.project.dao;

import ru.pavlenko.project.entities.ClientEntity;

import java.util.List;

public interface ClientDAO {

    List<ClientEntity> allClients();
    void create(ClientEntity clientEntity);
    void update(ClientEntity clientEntity);
    void delete(ClientEntity clientEntity);
    ClientEntity getById(long id);
    List<ClientEntity> getByPassport(String passportSerial, String passportNumber);
    List<ClientEntity> getByContactNumber(String contactNumber);
    List<ClientEntity> getByFullName(String fullName);
}
