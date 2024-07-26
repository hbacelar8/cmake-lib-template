#include "lib.h"

#include <iostream>

namespace lib
{

void Lib::PrintNumber(int arg_iNumber)
{
  std::cout << "Number " << arg_iNumber << std::endl;
}

}  // namespace lib