package com.rispacs.model;

import java.sql.Timestamp;

public class PatientInvoice {


    Timestamp dateOfService;
    int numberOfIitems;
    int procedureId;
    int patientId;
    int status;
    int modalityType;
    int item;
    String description;
    double cost;
    double discount;
    double balance;
    double paid;


    public PatientInvoice(Timestamp dateOfService, int procedureId, int patientId, int modalityType, double paid){
        this.dateOfService = dateOfService;
        this.procedureId = procedureId;
        this.patientId = patientId;
        this.modalityType = modalityType;
        this.paid = paid;
    }

    public int getModalityType() {
        return modalityType;
    }

    public void setModalityType(int modalityType) {
        this.modalityType = modalityType;
    }

    public Timestamp getDateOfService() {
        return dateOfService;
    }

    public void setDateOfService(Timestamp dateOfService) {
        this.dateOfService = dateOfService;
    }

    public int getNumberOfIitems() {
        return numberOfIitems;
    }

    public void setNumberOfIitems(int numberOfIitems) {
        this.numberOfIitems = numberOfIitems;
    }

    public int getProcedureId() {
        return procedureId;
    }

    public void setProcedureId(int procedureId) {
        this.procedureId = procedureId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getItem() {
        return item;
    }

    public void setItem(int item) {
        this.item = item;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public double getPaid() {
        return paid;
    }

    public void setPaid(double paid) {
        this.paid = paid;
    }

}
