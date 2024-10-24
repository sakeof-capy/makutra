#include "makutra.h"
#include "fast_di/dynamic/FastDI.hpp"

using fast_di::dynamic_di::DIContainerBuilder;
using fast_di::dynamic_di::DIContainer;

class IInjectable
{
public:
	virtual ~IInjectable() = default;

public:
	virtual void do_something() = 0;
};

class Injectable : public IInjectable 
{
public:
	~Injectable() override = default;

public:
	void do_something() override 
	{
		std::cout << "Works" << std::endl;
	}
};

int main()
{
	DIContainer container = DIContainerBuilder{}
			.register_singleton<Injectable>()
				.as_interface<IInjectable>()
				.constructed_with<>()
			.done()
		.build();

	IInjectable& injectable = container.resolve<IInjectable>();
	injectable.do_something();

	return EXIT_SUCCESS;
}
