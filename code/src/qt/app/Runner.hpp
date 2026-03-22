#pragma once

#include "Actions.hpp"
#include <string>

#define oRunner Runner::Instance()

class Runner
{
private:
    explicit Runner();

public:
    ~Runner();
    static Runner &Instance();
    void run(const Actions::Data &_action);

private:
    void runMainWindow(const Actions::Data &_action);
};
