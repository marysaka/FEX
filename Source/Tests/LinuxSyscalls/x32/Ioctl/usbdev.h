#include "Tests/LinuxSyscalls/x32/Types.h"
#include "Tests/LinuxSyscalls/x32/Ioctl/HelperDefines.h"

#include <cstdint>
#include <linux/usbdevice_fs.h>
#include <sys/ioctl.h>

namespace FEX::HLE::x32 {
namespace usbdev {
#include "Tests/LinuxSyscalls/x32/Ioctl/usbdev.inl"
}
}
