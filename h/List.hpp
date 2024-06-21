#ifndef PROJECT_BASE_V1_1_LIST_HPP
#define PROJECT_BASE_V1_1_LIST_HPP

#include "KernelClass.hpp"

template<typename T>
class List : public KernelClass {
public:
    struct Element : public KernelClass {
        T *data;
        Element *next;

        Element(T *data, Element *next) : data(data), next(next) {}
    };

    Element *head, *tail;

    List() : head(0), tail(0) {}

    List(const List<T> &) = delete;
    List<T> &operator =(const List<T> &) = delete;

    void addFirst(T *data) {
        Element *element = new Element(data, head);
        head = element;
        if (!tail) {
            tail = head;
        }
    }
    void enqueue(T *data) {
        Element *element = new Element(data, 0);
        if (tail) {
            tail->next = element;
            tail = element;
        }
        else {
            head = tail = element;
        }
    }

    T *dequeue() {
        if (!head) {
            return 0;
        }
        Element *element = head;
        head = head->next;
        if (!head) {
            tail = 0;
        }
        T *result = element->data;
        delete element;
        return result;
    }

    T *peekFirst() {
        if (!head) {
            return 0;
        }
        return head->data;
    }

    T *removeLast() {
        if (!head) {
            return 0;
        }
        Element *previous = 0;
        for (Element *current = head; current && current != tail; current = current->next) {
            previous = current;
        }
        Element *element = tail;
        if (previous) {
            previous->next = 0;
        }
        else {
            head = 0;
        }
        tail = previous;
        T *result = element->data;
        delete element;
        return result;
    }

    T *peekLast() {
        if (!tail) {
            return 0;
        }
        return tail->data;
    }

    bool isEmpty() const {
        return head == nullptr;
    }

    void removeFromList(const T *data) {
        Element *prev = nullptr, *curr = head;
        while (curr) {
            if (curr->data == data) {
                (prev ? prev->next : head) = curr->next;
            } else {
                prev = curr;
            }
            curr = curr->next;
        }
    }
};

#endif //PROJECT_BASE_V1_1_LIST_HPP
