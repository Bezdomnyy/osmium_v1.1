//
// Created by os on 9/6/22.
//

#ifndef OSMIUM_LIST_H
#define OSMIUM_LIST_H

#include "../lib/console.h"

#include "__print.hpp"
#include "memory_allocator.hpp"

template <typename T>
class List {
private:
    struct Node {
        T *data;
        Node *next;

        Node(T *data, Node *next) : data(data), next(next) {}

        void* operator new(size_t size) {
            return MemoryAllocator::allocate(size);
        }

        void* operator new[](size_t size) {
            return MemoryAllocator::allocate(size);
        }

        void operator delete(void* ptr) {
            MemoryAllocator::free(ptr);
        }

        void operator delete[](void* ptr) {
            MemoryAllocator::free(ptr);
        }
    };

    Node *head, *tail;
public:
    List() : head(0), tail(0) {}
    List(const List<T> &) = delete;
    List<T> &operator=(const List<T> &) = delete;

    void putFirst(T *data) {
        Node *newNode = new Node(data, head);
        head = newNode;
        if (!tail) tail = head;
    }

    void putLast(T *data) {
        Node *newNode = new Node(data, 0);
        if (!tail) head = tail = newNode;
        else {
            tail->next = newNode;
            tail = newNode;
        }
    }

    void putSorted(T* data) {
        Node *newNode = new Node(data, 0);
        if (!head) { head = tail = newNode; return; }
        Node* curr = head, *prev = nullptr;
        while (curr) {
            if (*(uint64*)(newNode->data) < *(uint64*)(curr->data)) {
                break;
            }
            *(uint64*)(newNode->data) -= *(uint64*)(curr->data);
            prev = curr;
            curr = curr->next;
        }
        if (prev) prev->next = newNode;
        else head = newNode;
        if (curr) {newNode->next = curr; *(uint64*)(curr->data) -= *(uint64*)(newNode->data);}
        else prev->next = newNode;
    }

    T* takeFirst() {
        if (!head) return 0;

        T* ret = head->data;
        Node* old = head;
        head = head->next;
        if (!head) tail = 0;
        delete old;
        //printStatus();

        return ret;
    }

    T* takeLast() {
        if (!head) return 0;

        Node* curr = head, *prev = 0;
        while (curr->next) prev = curr, curr = curr->next;

        if(prev) prev->next = 0;
        else head = 0;
        tail = prev;
        T* ret = curr->data;

        return ret;
    }

    T* getFirst() {
        if(!head) return 0;
        return head->data;
    }
    T* getLast() {
        if (!tail) return 0;
        return tail->data;
    }

    /*~List() {
        while (head) {
            Node *old = head;
            head = head->next;
            delete old;
        }

        tail = 0;
    }*/

    void deleteList() {
        while (head) {
            Node *old = head;
            head = head->next;
            delete old;
        }

        tail = 0;
    }

    void printStatus() {
        Node* curr = head;
        __print_string("list contents:\n");
        __print_string(">head: ");
        __print_uint64((uint64)head);
        __print_string("\n");
        __print_string(">tail: ");
        __print_uint64((uint64)tail);
        __print_string("\n");
        int i = 0;
        while(curr) {
            __print_string("Node["); __print_uint64(i);
            __print_string("]: ");
            __print_uint64((uint64)curr);
            __print_string("\n");
            __print_string("  data: ");
            __print_uint64((uint64)curr->data);
            __print_string("\n");
            __print_string("  next: ");
            __print_uint64((uint64)curr->next);
            __print_string("\n");
            i++;
            curr = curr->next;
        }
        __print_string("\n");
        __print_string("\n");
    }
};

#endif //OSMIUM_LIST_H
