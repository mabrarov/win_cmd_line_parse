//
// Copyright (c) 2018 Marat Abrarov (abrarov@gmail.com)
//
// Distributed under the Apache License, Version 2.0. (See accompanying
// file LICENSE or copy at http://www.apache.org/licenses/LICENSE-2.0)
//

#include <Windows.h>
#include <tchar.h>
#include <cstdlib>
#include <stdexcept>
#include <iostream>

namespace {

class local_free_guard
{
public:
  explicit local_free_guard(HLOCAL handle) : handle_(handle)
  {
  }

  ~local_free_guard()
  {
    ::LocalFree(handle_);
  }

private:
  HLOCAL handle_;
};

}

int _tmain(int /*argc*/, _TCHAR* /*argv*/[])
{
  try
  {
    int argc;
    LPWSTR* argv = ::CommandLineToArgvW(::GetCommandLineW(), &argc);
    if (!argv)
    {
      throw std::runtime_error("Failed to parse command line");
    }
    local_free_guard free_guard(static_cast<HLOCAL>(argv));
    for (int i = 1; i < argc; ++i)
    {
      std::wcout << argv[i] << std::endl;
    }
    return EXIT_SUCCESS;
  }
  catch (const std::exception& e)
  {
    std::cerr << e.what() << std::endl;
    return EXIT_FAILURE;
  }
  catch (...)
  {
    return EXIT_FAILURE;
  }
}