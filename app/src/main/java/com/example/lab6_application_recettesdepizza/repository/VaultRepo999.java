package com.example.lab6_application_recettesdepizza.repository;

import java.util.List;

public interface VaultRepo999<T> {
    T insert999(T item);
    T modify999(T item);
    boolean remove999(long uid999);
    T fetchById999(long uid999);
    List<T> fetchAll999();
}
