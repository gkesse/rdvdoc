#include "Actions.hpp"

Actions::Actions()
{
}

Actions::~Actions()
{
}

Actions &Actions::Instance()
{
    static Actions instance;
    return instance;
}

void Actions::addAction(const std::string &_module, const std::string &_method, void *_params)
{
    Data data;
    data.module = _module;
    data.method = _method;
    data.params = _params;
    m_dataList.push(data);
}

Actions::Data Actions::getAction()
{
    Data data = m_dataList.front();
    m_dataList.pop();
    return data;
}

bool Actions::isEmpty() const
{
    return m_dataList.empty();
}
