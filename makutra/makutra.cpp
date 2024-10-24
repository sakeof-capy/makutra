#include "DI.hpp"
#include "fast_di/global/GlobalDI.hpp"
#include "injectable.hpp"

int main()
{
	subscribe_all_dependencies();
	auto container = fast_di::global_di::GlobalDI::build_container();
	
	IInjectable& injectable = container.resolve<IInjectable>();
	injectable.do_something();

	return EXIT_SUCCESS;
}
