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

    public Node findNode(long key) {

        Node focusNode = root;

        while (focusNode.key != key) {

            if (key < focusNode.key) {

                focusNode = focusNode.leftChild;

            } else {

                focusNode = focusNode.rightChild;
            }
            if (focusNode == null) {
                return null;
            }
        }
        return focusNode;
    }

    public boolean remove(long key) {

        Node focusNode = root;
        Node parent = root;

        boolean isItAleftChild = true;

        while (focusNode.key != key) {

            parent = focusNode;

            if (key < focusNode.key) {

                isItAleftChild = true;
                focusNode = focusNode.leftChild;
            } else {

                isItAleftChild = false;
                focusNode = focusNode.rightChild;
            }
            if (focusNode == null) {
                return false;
            }
        }
        if (focusNode.leftChild == null && focusNode.rightChild == null) {

            if (focusNode == root) {

                root = null;
            } else if (isItAleftChild) {

                parent.leftChild = null;
            } else {

                parent.rightChild = null;
            }
        }
        else if (focusNode.rightChild == null) {

            if (focusNode == root) {

                root = focusNode.leftChild;
            } else if (isItAleftChild) {

                parent.leftChild = focusNode.leftChild;
            }
            else parent.rightChild = focusNode.leftChild;
        }
        else if (focusNode.leftChild == null) {
            if (focusNode == root) {
                root = focusNode.rightChild;
            } else if (isItAleftChild) {
                parent.leftChild = focusNode.rightChild;
            } else {
                parent.rightChild = focusNode.leftChild;
            }
        } else {
            Node replacement = getReplacementNode(focusNode);

            if (focusNode == root) {
                root = replacement;
            }
            else if (isItAleftChild) {
                parent.leftChild = replacement;
            } else {
                parent.rightChild = replacement;

                replacement.leftChild = focusNode.leftChild;
            }
        }
        return true;
    }

    public Node getReplacementNode(Node replacedNode) {

        Node replacementParent = replacedNode;
        Node replacement = replacedNode;

        Node focusNode = replacedNode.rightChild;

        while (focusNode != null) {
            replacementParent = replacement;
            replacedNode = focusNode;
            focusNode = focusNode.leftChild;
        }
        if (replacement != replacedNode.rightChild) {
            replacementParent.leftChild = replacement.rightChild;
            replacement.rightChild = replacedNode.rightChild;
        }
        return replacement;
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
