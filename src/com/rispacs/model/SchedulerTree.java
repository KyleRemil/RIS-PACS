package com.rispacs.model;

import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

import java.lang.reflect.Array;
import java.util.ArrayList;

//A binary tree for sorting out the scheduling
public class SchedulerTree {

    public Node root;

    public void addNode(long key, int id) {

        Node newNode = new Node(key, id);

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

    public void getNextProcedure(Node focusNode) {

        int counter = 0;

        if (focusNode != null && counter < 1) {

            getNextProcedure(focusNode.leftChild);

            System.out.println("key: " + focusNode.key);

            counter++;

            getNextProcedure(focusNode.rightChild);

//            System.out.println("key: " + focusNode.key);
        } else {
            System.out.println("focus node null!");
        }
    }

    private class Node {

        long key;
        int id;

        Node leftChild;
        Node rightChild;

        private Node(long key, int id) {

            this.key = key;
            this.id = id;
        }
    }


}
