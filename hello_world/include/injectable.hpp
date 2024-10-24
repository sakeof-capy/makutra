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
	void do_something() override;
};
