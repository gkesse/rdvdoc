#include "Workers.hpp"
#include "Actions.hpp"
#include "Runner.hpp"
#include <thread>
#include <chrono>

using namespace std::chrono_literals;

Workers::Workers()
{
}

Workers::~Workers()
{
}

Workers &Workers::Instance()
{
    static Workers instance;
    return instance;
}

void Workers::start()
{
    std::thread thread(&Workers::onWork);
    thread.detach();
}

void Workers::onWork()
{
    while (true)
    {
        if (!oActions.isEmpty())
        {
            oRunner.run(oActions.getAction());
        }
        std::this_thread::sleep_for(100ms);
    }
}
