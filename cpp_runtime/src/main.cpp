//
// Copyright (c) 2018 Marat Abrarov (abrarov@gmail.com)
//
// Distributed under the Apache License, Version 2.0. (See accompanying
// file LICENSE or copy at http://www.apache.org/licenses/LICENSE-2.0)
//

#if defined(WIN32)
#include <tchar.h>
#endif

#include <iostream>

#if defined(WIN32)
int _tmain(int argc, _TCHAR* argv[])
#else
int main(int argc, char* argv[])
#endif
{
  for (int i = 0; i < argc; ++i)
  {
#if defined(WIN32) && defined(_UNICODE)
    std::wcout << argv[i] << std::endl;
#else
    std::cout << argv[i] << std::endl;
#endif
  }
}