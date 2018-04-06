package com.rispacs.model.schedule;

import java.util.Arrays;

public class SchedulerQueue {

    private Appointment[] appointmentArray;
    private int queueSize, front, rear, numbOfItems = 0;

    SchedulerQueue(int queueSize) {

        this.queueSize = queueSize;
        this.appointmentArray = new Appointment[queueSize];
    }

    public void insert(Appointment appointment) {

        if (numbOfItems + 1 <= queueSize) {

            appointmentArray[rear] = appointment;
            rear++;
            numbOfItems++;
        } else {
            System.out.println("queue full!");
        }
    }

    public void remove(){

        //not really removing because I dont want to waste time resorting, just changing the head.

        if (numbOfItems > 0) {

            front++;
        }
    }

    public Appointment peek() {

        return appointmentArray[front];
    }

}
