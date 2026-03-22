#pragma once

#define oWorkers Workers::Instance()

class Workers
{
private:
    explicit Workers();

public:
    ~Workers();
    static Workers &Instance();
    void start();

private:
    static void onWork();
};
