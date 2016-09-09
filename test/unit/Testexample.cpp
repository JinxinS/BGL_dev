#include <gmock/gmock.h>
#include <string>

#define BOOST_TEST_MODULE Mock example
#include <boost/test/unit_test.hpp>

class PropHolder {
public:
    PropHolder()  { }
    virtual ~PropHolder() { }

    virtual void SetProperty(const std::string& name, int value) = 0;
    virtual int GetProperty(const std::string& name) = 0;
};

class TestClass {
public:
    TestClass(PropHolder& ph) : fPropHolder(ph) { }
    void doCalc() {
//        if (fPropHolder.GetProperty(std::string("test")) > 100) {
            fPropHolder.SetProperty("test2", 555);
//        } else
//            fPropHolder.SetProperty("test2", 785);
    }
private:
    PropHolder& fPropHolder;
};

class MockPropHolder : public PropHolder {
public:
    MockPropHolder() { }
    virtual ~MockPropHolder() { }

    MOCK_METHOD2(SetProperty, void(const std::string& name, int value));
    MOCK_METHOD1(GetProperty, int(const std::string& name));
};

BOOST_AUTO_TEST_CASE(test_gmock1) {
    using ::testing::Return;

    MockPropHolder mholder;
    EXPECT_CALL(mholder, GetProperty(std::string("test"))).Times(1).WillOnce(Return(101));
    EXPECT_CALL(mholder, SetProperty(std::string("test2"),555));

    TestClass t(mholder);
    t.doCalc();
}
