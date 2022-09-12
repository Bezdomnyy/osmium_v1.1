//
// Created by os on 9/6/22.
//

#ifndef OSMIUM_LIST_H
#define OSMIUM_LIST_H

#include "../lib/console.h"
#include "../h/print.hpp"

template <typename T>
class List {
private:
    struct Node {
        T *data;
        Node *next;

        Node(T *data, Node *next) : data(data), next(next) {}
    };

    Node *head, *tail;
public:
    List() : head(0), tail(0) {}
    List(const List<T> &) = delete;
    //List(List<T> &&) = delete;
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
        while (curr && *(uint64*)data > *(uint64*)(curr->data)) {
            prev = curr;
            curr = curr->next;
            *(uint64*)data -= *(uint64*)curr;
        }
        newNode->next = curr;
        if (prev) prev->next = newNode;
        else head = newNode;
        if(!curr) tail = newNode;
    }

    T* takeFirst() {
        if (!head) return 0;

        T* ret = head->data;
        Node* old = head;
        head = head->next;
        if (!head) tail = 0;
        delete old;

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
};

/*template<typename T>
class List
{
private:
    struct Elem
    {
        T *data;
        Elem *next;

        Elem(T *data, Elem *next) : data(data), next(next) {}
    };

    Elem *head = 0, *tail = 0;

public:
    List() : head(0), tail(0) {}

    List(const List<T> &) = delete;

    List<T> &operator=(const List<T> &) = delete;

    void addFirst(T *data)
    {
        __putc('i');
        __putc('f');
        __putc('\n');
        Elem *elem = new Elem(data, head);
        head = elem;
        if (!tail) { tail = head; }

    }

    void addLast(T *data)
    {
        __putc('i');
        __putc('l');
        __putc('\n');

        Elem *elem = new Elem(data, 0);
        if (tail)
        {
            tail->next = elem;
            tail = elem;
        } else
        {
           // __print_string("help2\n");
            head = tail = elem;
        }
        printStatus();
    }

    T *removeFirst()
    {
        __putc('o');
        __putc('f');
        __putc('\n');
        if (!head) {
            //__print_string("help1\n");
            return 0;
        }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }

        T *ret = elem->data;
        delete elem;
        printStatus();
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
        return head->data;
    }

    T *removeLast()
    {
        __putc('o');
        __putc('l');
        __putc('\n');
        if (!head) { return 0; }

        Elem *prev = 0;
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
        {
            prev = curr;
        }

        Elem *elem = tail;
        if (prev) { prev->next = 0; }
        else { head = 0; }
        tail = prev;

        T *ret = elem->data;
        delete elem;
        return ret;
    }

    T *peekLast()
    {
        if (!tail) { return 0; }
        return tail->data;
    }

    void printStatus() {
        Elem* curr = head;
        __print_string("list contents:\n");
        __print_string(">head: ");
        __print_uint64((uint64)head);
        __putc('\n');
        __print_string(">tail: ");
        __print_uint64((uint64)tail);
        __putc('\n');
        int i = 0;
        while(curr) {
            __print_string("Node["); __putc(i+48);
            __print_string("]: ");
            __print_uint64((uint64)curr);
            __putc('\n');
            __print_string("  data: ");
            __print_uint64((uint64)curr->data);
            __putc('\n');
            __print_string("  next: ");
            __print_uint64((uint64)curr->next);
            __putc('\n');
            i++;
            curr = curr->next;
        }
        __putc('\n');
        __putc('\n');
    }
};*/

#endif //OSMIUM_LIST_H
