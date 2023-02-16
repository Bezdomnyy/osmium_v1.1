//
// Created by os on 9/6/22.
//

#ifndef OSMIUM_LIST_H
#define OSMIUM_LIST_H

#include "../lib/console.h"
//#include "../h/print.hpp"

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
    //List(List<T> &&) = delete;
    List<T> &operator=(const List<T> &) = delete;

    void putFirst(T *data) {
        Node *newNode = new Node(data, head);
        head = newNode;
        if (!tail) tail = head;
    }

    void putLast(T *data) {
        /*__putc('i');
        __putc('l');
        __putc('\n');*/
        Node *newNode = new Node(data, 0);
        if (!tail) head = tail = newNode;
        else {
            tail->next = newNode;
            tail = newNode;
        }
        //printStatus();
    }

    void putSorted(T* data) {
        Node *newNode = new Node(data, 0);
        if (!head) { head = tail = newNode; return; }
        Node* curr = head;
        uint64 nodeTime = *(uint64*)data;
        uint64 currTime = *(uint64*)(curr->data);
        if (nodeTime < currTime) { *(uint64*)(curr->data) -= nodeTime; putFirst(data); return; }
        while (curr->next && *(uint64*)data > *(uint64*)(curr->data)) {
            curr = curr->next;
            *(uint64*)data -= *(uint64*)curr->data;
        }
        newNode->next = curr->next;
        curr->next = newNode;
        if (!curr->next) tail = newNode;
    }

    T* takeFirst() {
        /*__putc('o');
        __putc('f');
        __putc('\n');*/
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
