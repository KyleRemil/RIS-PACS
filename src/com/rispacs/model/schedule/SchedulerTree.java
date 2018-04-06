package com.rispacs.model.schedule;

import java.util.ArrayList;

//A binary tree for sorting out the scheduling
public class SchedulerTree {

    public Node root;

    public void addNode(long key, Appointment appointment) {

        Node newNode = new Node(key, appointment);

        if (root == null) {

            root = newNode;
        } else {

            Node focusNode = root;
            Node parent;

            while (true) {

                parent = focusNode;

                if (key < focusNode.key) {

                    focusNode = focusNode.leftChild;

                    if (focusNode == null) {

                        parent.leftChild = newNode;
                        return;
                    }
                } else {

                    focusNode = focusNode.rightChild;

                    if (focusNode == null) {

                        parent.rightChild = newNode;
                        return;
                    }
                }
            }
        }
    }

    public void getNextProcedure(Node focusNode, ArrayList arrayList) {

        if (focusNode != null) {

            getNextProcedure(focusNode.leftChild, arrayList);

            System.out.println("key: " + focusNode.key);
            arrayList.add(focusNode);

            getNextProcedure(focusNode.rightChild, arrayList);

//            System.out.println("key: " + focusNode.key);
        } else {
            System.out.println("focus node null!");
        }
    }

    private class Node {

        long key;
        Appointment appointment;

        Node leftChild;
        Node rightChild;

        private Node(long key, Appointment appointment) {

            this.key = key;
            this.appointment = appointment;
        }
    }


}
