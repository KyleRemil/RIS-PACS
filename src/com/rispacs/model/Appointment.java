package com.rispacs.model;

import java.sql.Timestamp;

public class Appointment {

    //Need modalityTypeId from modalitytype table.
    // Need patientId, procedureId, procedureDateOfRequest, modalityProcedureType from procedurelist table

    private int procedureId, modalityTypeId, patientId, procedureStatus;
    private Timestamp dateOfRequest,scheduledDate;

    Appointment(int modalityTypeId, int patientId, int procedureId, int procedureStatus, Timestamp dateOfRequest) {

        this.modalityTypeId = modalityTypeId;
        this.patientId = patientId;
        this.procedureId = procedureId;
        this.dateOfRequest = dateOfRequest;
        this.procedureStatus = procedureStatus;
    }

    public int getProcedureId() {
        return procedureId;
    }

    public void setProcedureId(int procedureId) {
        this.procedureId = procedureId;
    }

    public int getModalityTypeId() {
        return modalityTypeId;
    }

    public void setModalityTypeId(int modalityTypeId) {
        this.modalityTypeId = modalityTypeId;
    }

    public int getPatientId() {
        return patientId;
    }

    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    public Timestamp getDateOfRequest() {
        return dateOfRequest;
    }

    public void setDateOfRequest(Timestamp dateOfRequest) {
        this.dateOfRequest = dateOfRequest;
    }

    public Timestamp getScheduledDate() {
        return scheduledDate;
    }

    public void setScheduledDate(Timestamp scheduledDate) {
        this.scheduledDate = scheduledDate;
    }

    public int getProcedureStatus() {
        return procedureStatus;
    }

    public void setProcedureStatus(int procedureStatus) {
        this.procedureStatus = procedureStatus;
    }
}
