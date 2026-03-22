#pragma once

#include <string>
#include <queue>

#define oActions Actions::Instance()

class Actions
{
public:
    inline static const std::string MOD_MAINWINDOW = "MOD_MAINWINDOW";

public:
    inline static const std::string MET_OPEN_LIST_WIDGET = "MET_OPEN_LIST_WIDGET";
    inline static const std::string MET_OPEN_SEARCH_BAR = "MET_OPEN_SEARCH_BAR";
    inline static const std::string MET_OPEN_SEARCH_BAR_EDIT = "MET_OPEN_SEARCH_BAR_EDIT";

public:
    struct Data
    {
        std::string module;
        std::string method;
        void *params;
    };

    using DataList = std::queue<Data>;

private:
    explicit Actions();

public:
    ~Actions();
    static Actions &Instance();
    void addAction(const std::string &_module, const std::string &_method, void *_params = nullptr);
    Data getAction();
    bool isEmpty() const;

private:
    DataList m_dataList;
};
