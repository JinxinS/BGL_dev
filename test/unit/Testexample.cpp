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
        if (fPropHolder.GetProperty(std::string("test")) > 100) {
            fPropHolder.SetProperty("test2", 555);
        } else
            fPropHolder.SetProperty("test2", 785);
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

class outport;
class port{
public:
	virtual void print(port*){std::cout <<"Base"<<std::endl;}
};

class inport:public port{
public:
	std::map < outport*, int > source_outputs;
	virtual void print(port*){std::cout <<"inport"<<std::endl;}
	void add(outport* o){
		source_outputs.insert(std::make_pair((outport*)o,0));
	}

};

class outport:public port{
public:
	//virtual void print(port*){std::cout <<"outport"<<std::endl;}
};

class loginport:public inport{
public:
	void print(port*){std::cout <<"loginport"<<std::endl;}
};

class phyinport:public inport{
public:
	void print(port* p){std::cout <<"phyinport"<<p<<std::endl;}
};

class logoutport:public outport{
public:
	//void print(port*){std::cout <<"logoutport"<<std::endl;}
};

//std::map<outport*,int> container;
BOOST_AUTO_TEST_CASE(test3) {
	loginport* in = new loginport();
	in->add(new logoutport());
}
